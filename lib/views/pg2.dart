import 'package:flutter/material.dart';

class Pg2 extends StatelessWidget {
  var name=["Aish","Goutham","Anu","Abhijeet","Athulya","Bharath","Rajat","Micro","Achu","Deepthi"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: name.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index)
      {
        return Card(
          elevation: 5.0,
          child: Center(
            child: Text(name[index]),
          ),
        );
      })
    );
  }
}
