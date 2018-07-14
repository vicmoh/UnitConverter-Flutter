import 'package:flutter/material.dart';

class CategoryRoute extends StatelessWidget {

  // dev vars 
  final List<Category> _categories = [
    Category(
        icon: IconData(0xe41c, fontFamily: 'MaterialIcons'), label: "Length"),
    Category(
        icon: IconData(0xe265, fontFamily: 'MaterialIcons'), label: "Area"),
    Category(
        icon: IconData(0xeb44, fontFamily: 'MaterialIcons'), label: "Volume"),
    Category(
        icon: IconData(0xe43d, fontFamily: 'MaterialIcons'), label: "Mass"),
    Category(
        icon: IconData(0xe425, fontFamily: 'MaterialIcons'), label: "Time"),
    Category(
        icon: IconData(0xe161, fontFamily: 'MaterialIcons'),
        label: "Digital Storage"),
  ];

  Widget _catagoriesListView(BuildContext context){
    EdgeInsets topBottomPadding = new EdgeInsets.only(top: 15.0, bottom: 15.0);
    if (MediaQuery.of(context).orientation == Orientation.portrait){
      return ListView.builder(
        itemBuilder: (context, index) => _categories[index],
        itemCount: _categories.length,
        padding: topBottomPadding,
      );
    }else{
      return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3.0,
        children: _categories,
        padding: topBottomPadding,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar
      appBar: AppBar(
        title: Center(
          child: Text(
            'Unit Converter',
            textAlign: TextAlign.center,
            textScaleFactor: 2.0,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: _catagoriesListView(context)
    );
  }
}

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
            print("catagory button is clicked");
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
