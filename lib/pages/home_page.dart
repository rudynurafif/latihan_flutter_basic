import 'package:flutter/material.dart';
import 'package:latihan_flutter_1/pages/product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => ProductPage(),
            // ));
            Navigator.pushNamed(context, '/productpage');
          },
          child: Text("Go to Product Page"),
        ),
      ),
    );
  }
}
