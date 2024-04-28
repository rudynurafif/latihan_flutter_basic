import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDeletePage extends StatefulWidget {
  const HttpDeletePage({super.key});

  @override
  State<HttpDeletePage> createState() => _HttpDeletePageState();
}

class _HttpDeletePageState extends State<HttpDeletePage> {
  String data = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HTTP DELETE",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () async {
                var res = await http.get(Uri.parse("https://reqres.in/api/users/2"));
                Map<String, dynamic> myRes = jsonDecode(res.body);
                setState(() {
                  data = "Akun: ${myRes['data']['first_name']} - ${myRes['data']['last_name']}";
                });
              },
              icon: Icon(Icons.get_app))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Data user 1 : ${data}"),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              onPressed: () async {
                var response = await http.delete(Uri.parse('https://reqres.in/api/users/2'));
                if (response.statusCode == 204) {
                  setState(() {
                    data = 'Data berhasil dihapus';
                  });
                }
              },
              child: Text("Delete"))
        ],
      ),
    );
  }
}
