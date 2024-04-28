import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class TextFieldApp extends StatefulWidget {
  const TextFieldApp({super.key});

  @override
  State<TextFieldApp> createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  bool isHidden = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Text Field',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: nameController,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Nama',
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Nama Lengkap'),
                  textInputAction: TextInputAction.next,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailController,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefix: const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.email)),
                labelText: 'Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              controller: passwordController,
              autocorrect: false,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Minimal 8 karakter",
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (isHidden == true) {
                          isHidden = false;
                        } else {
                          isHidden = true;
                        }
                        setState(() {});
                      },
                      icon: const Icon(Icons.remove_red_eye))),
              obscureText: isHidden,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print(
                    'Nama: ${nameController.text}, Email: ${emailController.text}, Password: ${passwordController.text}');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
