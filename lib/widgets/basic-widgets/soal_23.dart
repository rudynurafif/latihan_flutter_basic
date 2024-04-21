import 'dart:math';

import 'package:flutter/material.dart';

class Soal23 extends StatelessWidget {
  const Soal23({
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                ClipOval(
                  child: Container(
                    width: 270,
                    height: 270,
                    color: Color(0xff0D47A1),
                  ),
                ),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250 / 2),
                      border: Border.all(color: Colors.white, width: 10),
                      color: Colors.grey[900],
                      image: DecorationImage(fit: BoxFit.cover, image: NetworkImage('https://picsum.photos/250'))),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Text",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ));
  }
}
