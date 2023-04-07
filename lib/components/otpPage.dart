import 'package:absensi_siswa/view/absense/success.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:absensi_siswa/constants/color.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController _otpController = TextEditingController();
  // set jumlah digit OTP yang ingin ditampilkan
  int _otpLength = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: appTokenCard,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: PinCodeTextField(
                    appContext: context,
                    length: _otpLength,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 48,
                      fieldWidth: 40,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Color(0xFFEBEBEB),
                      activeFillColor: Colors.white,
                      activeColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    textStyle: TextStyle(fontSize: 20),
                    enableActiveFill: true,
                    controller: _otpController,
                    onCompleted: (value) {
                      // ketika OTP selesai diisi
                      print("Completed: $value");
                    },
                    onChanged: (value) {
                      // ketika OTP berubah
                      print("OTP Value: $value");
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessAbsense()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(appOrange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 130, vertical: 18)),
                ),
                child: Text(
                  'ABSEN',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
