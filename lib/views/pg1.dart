import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              final msg=SnackBar(content: Text("HI"),backgroundColor: Colors.green,);
              Scaffold.of(context).showSnackBar(msg);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0),
              ),
              height: 50.0,
              child: Center(child: Text("CLICK",style: TextStyle(fontSize: 25.0,color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
