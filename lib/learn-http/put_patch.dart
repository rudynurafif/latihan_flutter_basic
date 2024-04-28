import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPutPatchPage extends StatefulWidget {
  const HttpPutPatchPage({super.key});

  @override
  State<HttpPutPatchPage> createState() => _HttpPutPatchPageState();
}

class _HttpPutPatchPageState extends State<HttpPutPatchPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  String responseResult = "No data yet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "HTTP PUT/PATCH",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: jobController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Job",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await http.put(
                  Uri.parse("https://reqres.in/api/users/2"),
                  body: {
                    "name": nameController.text,
                    "job": jobController.text
                  },
                );
                Map<String, dynamic> data =
                    jsonDecode(response.body) as Map<String, dynamic>;

                setState(() {
                  responseResult =
                      "nama : ${data["name"]} \njob : ${data["job"]}";
                });
              },
              child: Text("Submit"),
            ),
            const SizedBox(
              height: 50,
            ),
            Divider(),
            const SizedBox(
              height: 10,
            ),
            Text(responseResult),
          ],
        ));
  }
}
