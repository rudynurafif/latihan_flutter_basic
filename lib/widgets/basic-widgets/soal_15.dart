import 'dart:math';

import 'package:flutter/material.dart';

class Soal15 extends StatelessWidget {
  const Soal15({
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              SizedBox(width: 20),
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
            FlutterLogo(
              size: 200,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              SizedBox(width: 20),
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
