import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Drawer',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                "Dashboard Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () => print("Home clicked!"),
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text("Product"),
                    onTap: () => print("Product page clicked!"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
