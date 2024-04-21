import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  int angka = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inc Dec App'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${angka}',
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          angka--;
                        });
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          angka++;
                        });
                      },
                      child: Icon(Icons.add))
                ],
              )
            ],
          ),
        ));
  }
}
