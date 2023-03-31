import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_siswa/constants/color.dart';


class LoginPage extends StatelessWidget {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    child: SvgPicture.asset("images/logo.svg"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NPM",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(18),
                      hintText: 'Enter NPM',
                      hintStyle: TextStyle(fontSize: 14.0),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(fontSize: 14),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: appBorder),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appOrange),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xFFAFAFAF),
                          ),
                          onPressed: () {
                              _passwordVisible = true;
                          },
                        ),
                        contentPadding: EdgeInsets.all(18),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(fontSize: 14.0),
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: appBorder),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: appOrange),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(appOrange),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                ),
                child: Text('LOGIN'),
              ),
            )
          ],
        ),
      ),
    );
  }
}


