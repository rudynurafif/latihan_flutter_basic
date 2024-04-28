import 'package:flutter/material.dart';
import 'package:latihan_flutter_1/learn-http/delete.dart';
import 'package:latihan_flutter_1/learn-http/future_builder.dart';
import 'package:latihan_flutter_1/learn-http/get.dart';
import 'package:latihan_flutter_1/learn-http/post.dart';
import 'package:latihan_flutter_1/learn-http/put_patch.dart';
import 'package:latihan_flutter_1/pages/home_page.dart';
import 'package:latihan_flutter_1/pages/product_page.dart';
import 'package:latihan_flutter_1/pages/profile_page.dart';
import 'package:latihan_flutter_1/widgets/bottom_nav_bar.dart';
import 'package:latihan_flutter_1/widgets/bottom_sheet.dart';
import 'package:latihan_flutter_1/widgets/counter.dart';
import 'package:latihan_flutter_1/widgets/drawer.dart';
import 'package:latihan_flutter_1/widgets/snackbar.dart';
import 'package:latihan_flutter_1/widgets/tab_bar.dart';
import 'package:latihan_flutter_1/widgets/text-field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilderPage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/productpage': (context) => ProductPage(),
        '/profilepage': (context) => ProfilePage(),
      },
    );
  }
}
