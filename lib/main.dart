import 'package:flutter/material.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_1.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_10.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_11.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_12.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_13.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_14.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_15.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_16.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_17.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_18.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_19.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_2.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_20.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_21.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_22.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_23.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_24.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_3.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_4.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_5.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_6.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_7.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_8.dart';
import 'package:latihan_flutter_1/widgets/basic-widgets/soal_9.dart';
import 'package:latihan_flutter_1/widgets/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterWidget(),
    );
  }
}
