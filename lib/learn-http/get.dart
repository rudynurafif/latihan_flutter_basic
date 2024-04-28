import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HttpGetPage extends StatefulWidget {
  const HttpGetPage({super.key});

  @override
  State<HttpGetPage> createState() => _HttpGetPageState();
}

class _HttpGetPageState extends State<HttpGetPage> {
  late String id;
  late String name;
  late String email;

  @override
  void initState() {
    id = "";
    name = "";
    email = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HTTP GET",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ID : $id",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "name : $name",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "email: $email",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () async {
                var response = await myhttp
                    .get(Uri.parse("https://reqres.in/api/users/5"));

                if (response.statusCode == 200) {
                  Map<String, dynamic> data =
                      jsonDecode(response.body) as Map<String, dynamic>;

                  setState(() {
                    id = data["data"]["id"].toString();
                    name = data["data"]["first_name"].toString();
                    name =
                        "${data["data"]["first_name"]} ${data["data"]["last_name"]}";
                    email = data["data"]["email"].toString();
                  });
                } else {
                  setState(() {
                    print("Error : ${response.statusCode}");
                    // id = "Error: ${response.statusCode}";
                  });
                }
              },
              child: Text("Get Data"),
            )
          ],
        ),
      ),
    );
  }
}
