import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_siswa/constants/color.dart';

class Absense extends StatelessWidget {
  const Absense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "images/bg-absense.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 210),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // child: Image.asset(
              //   "images/abs.png",
              //   fit: BoxFit.cover,
              // ),
              decoration: BoxDecoration(
                  color: app, borderRadius: BorderRadius.circular(40)),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65, left: 60),
                child: SvgPicture.asset("images/dash.svg"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
