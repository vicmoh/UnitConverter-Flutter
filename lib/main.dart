// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:hello_rectangle/src/category.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Udacity First App',
      home: Scaffold(

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
        
        // body
        body: Container(
          decoration: BoxDecoration(color: Colors.lightGreenAccent),
          child: ListView(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            children: <Widget>[
              Category(
                  icon: IconData(0xe41c, fontFamily: 'MaterialIcons'),
                  label: "Length"),
              Category(
                  icon: IconData(0xe265, fontFamily: 'MaterialIcons'),
                  label: "Area"),
              Category(
                  icon: IconData(0xeb44, fontFamily: 'MaterialIcons'),
                  label: "Volume"),
              Category(
                  icon: IconData(0xe43d, fontFamily: 'MaterialIcons'),
                  label: "Mass"),
              Category(
                  icon: IconData(0xe425, fontFamily: 'MaterialIcons'),
                  label: "Time"),
              Category(
                  icon: IconData(0xe161, fontFamily: 'MaterialIcons'),
                  label: "Digital Storage"),
            ],
          ),
        ),
      ),
    ),
  );
}
