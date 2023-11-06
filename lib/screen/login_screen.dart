import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'home_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  RegExp passwordRegExp =
      RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@#$%^&+=]).{8,}$');
  RegExp mobileRegExp = RegExp(r'^[0-9]{10}$');
  RegExp emailRegExp =
      RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,3})$');

  final emailPhoneController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool isPasswordVisible = true.obs;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(15),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _formKey,
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

                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Please enter email/mobile';

                      if (value[0].isNum) {
                        if (!mobileRegExp.hasMatch(value))
                          return 'Please enter valid mobile number';
                      } else {
                        if (!emailRegExp.hasMatch(value))
                          return 'Please enter valid email';
                      }
                      return null;
                    },
                    controller: emailPhoneController,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: 'Enter Email/Mobile',
                        border: UnderlineInputBorder()),
                  ),
                ),
                Container(
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // decoration: BoxDecoration(
                    //   border: Border(bottom: BorderSide()),
                    // ),
                    child: Obx(
                      () => TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Please enter password';

                          if (!passwordRegExp.hasMatch(value))
                            return 'Password must contain one upper case,\none special symbol, atleast one digit \nand lenght should be minimum 8';

                          return null;
                        },
                        obscureText: isPasswordVisible.value,
                        controller: passwordController,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              isPasswordVisible.value =
                                  !isPasswordVisible.value;
                            },
                            child: isPasswordVisible.value
                                ? Image.asset('assets/hide_password.png')
                                : Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.black,
                                  ),
                          ),
                          hintText: 'Password',
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (!_formKey.currentState!.validate()) {
                      Fluttertoast.showToast(
                          msg:
                              "Please enter correct email/mobile and password");
                      return;
                    }
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => NewsPage()),
                        (route) => false);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
        )),
      ),
    );
  }
}
