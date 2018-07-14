import 'package:flutter/material.dart';

class UnitScreen extends StatelessWidget{
  UnitScreen({
    this.title
  });

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title, textAlign: TextAlign.center, textScaleFactor: 1.5),
          backgroundColor: Colors.purpleAccent,
      ),
      body: Container(),
    );
  }
} 