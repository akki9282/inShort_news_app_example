import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loader = false;
  bool absorbingValue = false;
  final countryCodeController = TextEditingController();
  final phoneNumberController = TextEditingController();
  @override
  void initState() {
    countryCodeController.text = '+91';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Stack(
          children: [
            // if (loader)
            //   Positioned(
            //       top: MediaQuery.of(context).size.height * 0.4,
            //       left: MediaQuery.of(context).size.width * 0.4,
            //       child: Center(
            //           child: CircularProgressIndicator(
            //         color: Colors.black,
            //         // backgroundColor: Colors.amber,
            //       ))),
            AbsorbPointer(
              absorbing: absorbingValue,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      fit: BoxFit.fitWidth,
                      'assets/sign-up-form.svg',
                      semanticsLabel: 'My SVG Image',
                      height: MediaQuery.of(context).size.height * 0.3,
                      // width: 200,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 54, 54, 54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide()),
                      ),
                      child: TextField(
                        maxLength: 10,
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'Enter Email/Mobile',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      // padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),

                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide()),
                      ),
                      child: TextField(
                        maxLength: 10,
                        controller: phoneNumberController,
                        keyboardType: TextInputType.phone,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => NewsPage()),
                            (route) => false);
                        // if (isClick) {
                        //   return;
                        // }

                        // if (phoneNumberController.text.length != 10) {
                        //   Fluttertoast.showToast(
                        //       msg: 'Please enter valid mobile number');
                        //   return;
                        // }
                        // Fluttertoast.showToast(
                        //     msg: 'Wait while we send verification code');
                        // setState(() {
                        //   loader = true;
                        //   absorbingValue = true;
                        // });
                        // isClick = true;
                        // CircularProgressIndicator();
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
