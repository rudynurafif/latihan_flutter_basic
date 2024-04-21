import 'dart:math';

import 'package:flutter/material.dart';

class Soal9 extends StatelessWidget {
  const Soal9({
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
        body: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 150,
            height: 150,
            color: Colors.amber,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ]));
  }
}
