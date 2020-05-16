import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tryout/views/navigation.dart';


class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController usertxtcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: usertxtcontroller,
                decoration: InputDecoration(
                  hintText: ("USERNAME"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  prefixIcon: Icon(Icons.perm_identity),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                controller: passcontroller,
                decoration: InputDecoration(
                  hintText: ("PASSWORD"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffix: IconButton(
                    icon: Icon(CupertinoIcons.eye),
                    onPressed: () {
                      print("unlock");
                      setState(() {
                        _toggle();
                      });
                    },
                  ),
                ),
                obscureText: _obscureText,
              ),
              SizedBox(
                height: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  var getName = usertxtcontroller.text;
                  var getPass = passcontroller.text;
                  if (getName == "admin" && getPass == "12345") {
                    print("Login Sucessful");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  } else {

                    final msg=SnackBar(content: Text("Invalid credentials"));
                    Scaffold.of(context).showSnackBar(msg);
                    print("Invalid credentials");
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15.0)),
                  height: 50.0,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
