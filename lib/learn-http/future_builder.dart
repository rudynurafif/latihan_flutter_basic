import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_flutter_1/model/user.dart';

class FutureBuilderPage extends StatelessWidget {
  List<UserModel> users = [];

  Future getAllUser() async {
    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users?page=1"));
      List data = (jsonDecode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((element) {
        users.add(UserModel.fromJson(element));
      });

      print(users);
    } catch (e) {
      // print jika error
      print("Terjadi error");
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Future Builder",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: FutureBuilder(
          future: getAllUser(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text("Loading..."),
              );
              // } else if (snapshot.connectionState == ConnectionState.done) {
            } else {
              if (users.length == 0) {
                return Center(
                  child: Text("Users data is empty"),
                );
              }
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("${users[index].avatar}"),
                  ),
                  title: Text("${users[index].firstName} ${users[index].lastName}"),
                  subtitle: Text("${users[index].email}"),
                ),
              );
            }
          },
        ));
  }
}
