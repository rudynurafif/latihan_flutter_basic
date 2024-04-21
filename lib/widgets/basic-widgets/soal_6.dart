import 'dart:math';

import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: FlutterLogo(),
          title: Text(
            "Some Title",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {
                  print("Test");
                },
                icon: Icon(Icons.more_vert))
          ],
        ),
        body: Center(
            child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(250 / 2),
          ),
          child: Center(
            child: Text(
              'Text',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
        )));
  }
}
