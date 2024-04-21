import 'dart:math';

import 'package:flutter/material.dart';

class Soal12 extends StatelessWidget {
  const Soal12({
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
        body: Row(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Text',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Text',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
            ]),
            SizedBox(width: 20),
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Text',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Text',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ])
          ],
        ));
  }
}
