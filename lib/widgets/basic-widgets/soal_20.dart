import 'dart:math';

import 'package:flutter/material.dart';

class Soal20 extends StatelessWidget {
  const Soal20({
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
        body: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
            Container(
              width: 220,
              height: 220,
              color: Colors.red,
            ),
            Container(
              width: 190,
              height: 190,
              color: Colors.purple,
            ),
            Container(
              width: 160,
              height: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 130,
              height: 130,
              color: Colors.blue,
            ),
          ],
        ));
  }
}
