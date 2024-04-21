import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Soal24 extends StatelessWidget {
  const Soal24({
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
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, left: 20),
              margin: EdgeInsets.only(bottom: 20),
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Container(
                      width: 100,
                      height: 100,
                      color: Colors.amber,
                      margin: EdgeInsets.only(right: 20),
                    );
                  } else {
                    return Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      margin: EdgeInsets.only(right: 20),
                    );
                  }
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
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
              ),
            ),
          ],
        ));
  }
}
