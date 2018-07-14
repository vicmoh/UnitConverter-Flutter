import 'package:flutter/material.dart';

class UnitScreen extends StatelessWidget {
  UnitScreen({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, textAlign: TextAlign.center, textScaleFactor: 1.5),
        backgroundColor: Colors.purpleAccent,
      ),
      body: UnitInputContainer(),
    );
  }
}

class UnitInputContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UnitInputContainerState();
  }
}

class UnitInputContainerState extends State<UnitInputContainer> {
  final TextEditingController _inputController = TextEditingController();

  Widget buttonWidget(){
    return Container(
      child: RaisedButton(
        color: Colors.lightGreen,
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40.0, left: 40.0),
        child: Text("Submit", textScaleFactor: 2.0),
        onPressed: (){
          _inputController.text = "yee";
        },
      ),
    );
  }

  Widget inputWidget(String label, {String value}) {
    if (value != null) {
      _inputController.text = value;
    }
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      margin: EdgeInsets.all(30.0),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
        controller: _inputController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25.0),
          contentPadding: EdgeInsets.all(20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            gapPadding: 4.0,
          ),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        inputWidget("Enter Number"),
        inputWidget("Result", value: _inputController.text),
        buttonWidget(),
      ],
    );
  }
}
