import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Snackbar',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Data deleted successfully!'),
              action: SnackBarAction(
                label: 'Undo',
                textColor: Colors.white,
                onPressed: () {},
              ),
              duration: const Duration(seconds: 3),
              backgroundColor: Colors.blue,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ));
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
