import 'dart:math';

import 'package:flutter/material.dart';

class Soal18 extends StatelessWidget {
  const Soal18({
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
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Text ${index + 1}',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Text ${index + 1}',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }
}
