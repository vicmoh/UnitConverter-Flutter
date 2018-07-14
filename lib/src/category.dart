import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  //constructors
  const Category({
    this.label,
    this.icon,
  });

  //instances
  final double fontSize = 24.0;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(90.0)),
        color: Colors.greenAccent,
      ),
      height: 100.0,
      margin: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(90.0)),
        color: Colors.transparent,

        // animation
        child: InkWell(
          onTap: () {
            print("catagory button is clicked 2");
          },
          splashColor: Colors.green,

          // font and icon
          child: Row(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 20.0, right: 15.0),
                  child: Icon(
                    icon,
                    size: 60.0,
                  )),
              Container(
                child: Text(label, textScaleFactor: 2.0),
                padding: EdgeInsets.only(left: 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
