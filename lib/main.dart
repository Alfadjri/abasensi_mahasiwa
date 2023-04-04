import 'package:absensi_siswa/view/Login/login.dart';
import 'package:absensi_siswa/view/absense/absense.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/constants/color.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: '/loginpage',
      routes: {
        '/absense':(context) => Absense(),
      }
    );
  }
}
