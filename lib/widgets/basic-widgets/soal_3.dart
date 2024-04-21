import 'package:flutter/material.dart';

class Soal3 extends StatelessWidget {
  const Soal3({
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
          child: FlutterLogo(
        size: 200,
      )),
    );
  }
}
