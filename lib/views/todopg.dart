import 'package:flutter/material.dart';

class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  TextEditingController taskcontroller = TextEditingController();
  var mytask = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              TextField(
                controller: taskcontroller,
                decoration: InputDecoration(
                  hintText: "Enter task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  prefixIcon: Icon(Icons.local_hospital),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    var tasks = taskcontroller.text;
                    taskcontroller.clear();
                    mytask.add(tasks);
                  });
                },
                child: Text(
                  "ADD TASK",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purple,
              ),
              SizedBox(
                height: 15.0,
              ),
              SingleChildScrollView(
                child: ListView.builder(
                    itemCount: mytask.length == null ? 0 : mytask.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 5.0,
                        child: ListTile(
                          leading: Icon(Icons.arrow_forward_ios),
                          title: Text(
                            mytask[index].toString(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                          trailing: GestureDetector(
                              onTap: (){
                                setState(() {
                                  mytask.removeAt(index);
                                });
                              },
                              child: Icon(Icons.delete)),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
