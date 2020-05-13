import 'package:flutter/material.dart';

class CounterPg extends StatefulWidget {
  @override
  _CounterPgState createState() => _CounterPgState();
}

class _CounterPgState extends State<CounterPg> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/backgrd2.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      child: Text("COUNTER"),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      _counter.toString(),
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          _counter--;
                        });
                      },
                      child: Text("DECREMENT"),
                    ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
