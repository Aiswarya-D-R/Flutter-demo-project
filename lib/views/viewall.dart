import 'package:flutter/material.dart';

class Newview extends StatelessWidget {
  var data = [
    {"name": "Aish", "age": 30, "gender": "Female"},
    {"name": "Ashwin", "age": 16, "gender": "Male"},
    {"name": "Achu", "age": 20, "gender": "Male"},
    {"name":"Deepthi","age":25,"gender":"Female"}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 15.0,
                child: ListTile(
                  leading: Icon(
                    Icons.perm_contact_calendar,
                    size: 25.0,
                  ),
                  title: Text(
                    "Name: " + data[index]["name"],
                    style: TextStyle(fontSize: 20.0, color: Colors.pink),
                  ),
                  subtitle: Text("Age: " +
                      data[index]["age"].toString() +
                      "\n" +
                      "Gender: " +
                      data[index]["gender"]),
                  trailing: int.parse(data[index]["age"].toString()) > 18
                      ? FlatButton(onPressed: (){
                        print("info");
                  },child: Text("More info"),)
                      : Icon(Icons.clear),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
