import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_siswa/constants/color.dart';

class Card_Jadwal extends StatelessWidget {
  const Card_Jadwal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: appOrangePrimary,
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Research Method",
                      style:TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("images/ic_jam.svg"),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text("09.30 AM", style: TextStyle(color: Colors.white),),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Image.asset("images/img-card.png")
            ],
          )
        ],
      ),
    );
  }
}
