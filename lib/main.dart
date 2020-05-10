import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:tryout/views/loginpg.dart';
import 'package:tryout/views/registerpg.dart';

void main() {
  runApp(First());
}

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Register(),
      ),
    );
  }
}

