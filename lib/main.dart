import 'package:absensi_siswa/view/Login/login.dart';
import 'package:absensi_siswa/view/absense/absense.dart';
import 'package:flutter/material.dart';
import 'package:absensi_siswa/constants/color.dart';
import 'package:absensi_siswa/components/navbar_bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: '/loginpage',
      routes: {
        '/absense':(context) => Navbar_bottom(),
      }
    );
  }
}

