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
        appBar: AppBar(
          title: Text('First App'),
          backgroundColor: Colors.green,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.lightGreenAccent),
          child: Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
            child: ListView(
              children: <Widget>[
                Category(label: "Snow"),
                Category(label: "Second one"),
                Category(label: "Please work"),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}