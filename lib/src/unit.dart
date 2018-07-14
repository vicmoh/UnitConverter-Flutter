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
  TextEditingController _inputController = TextEditingController();
  TextEditingController _outputController = TextEditingController();

  Widget buttonWidget(){
    return Container(
      child: RaisedButton(
        color: Colors.lightGreen,
        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40.0, left: 40.0),
        child: Text("Submit", textScaleFactor: 2.0),
        onPressed: (){
          _outputController.text = "It Worked! " + _inputController.text;
        },
      ),
    );
  }

  Widget inputWidget(String label, {TextEditingController controller}) {
    if (controller != null) {
      controller.text = controller.text;
    }
    return Container(
      margin: EdgeInsets.only(left: 30.0, right: 30.0),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
        ),
        controller: controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 25.0),
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
        Container(padding: EdgeInsets.only(bottom: 20.0)),
        inputWidget("Enter Number", controller:  _inputController),
        Container(padding: EdgeInsets.only(bottom: 20.0)),
        inputWidget("Result", controller: _outputController),
        Container(padding: EdgeInsets.only(bottom: 20.0)),
        buttonWidget(),
      ],
    );
  }
}
