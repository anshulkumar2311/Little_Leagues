import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:little_league/screens/auth/signin.dart';

import '../../utils/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 200,
                      child: Center(child: Image.asset("assets/logo.png"))
                  ),
                  Center(
                    child: Text(
                      "SIGN UP",
                      style: text25Bold(white),
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Text(
                    "Name",
                    style: text18w500(white),
                  ),
                  SizedBox(height: 7.h,),
                  TextFormField(
                    style: text18w500(black),
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      hintText: "Enter your Name",
                      filled: true,
                      hintStyle: text18w500(Colors.grey.shade600),
                      fillColor: const Color.fromARGB(255, 204, 201, 201),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Text(
                    "Email ID",
                    style: text18w500(white),
                  ),
                  SizedBox(height: 7.h,),
                  TextFormField(
                    style: text18w500(black),
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      hintText: "Enter your Email ID",
                      filled: true,
                      hintStyle: text18w500(Colors.grey.shade600),
                      fillColor: const Color.fromARGB(255, 204, 201, 201),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  Text(
                    "Password",
                    style: text18w500(white),
                  ),
                  SizedBox(height: 7.h,),
                  TextFormField(
                    style: text18w500(black),
                    decoration: InputDecoration(
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      hintText: "Enter your Password",
                      filled: true,
                      hintStyle: text18w500(Colors.grey.shade600),
                      fillColor: const Color.fromARGB(255, 204, 201, 201),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forgot password?",
                      style: text12w400(white),
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const SignIn()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          minimumSize:
                          Size(MediaQuery.of(context).size.width, 65)),
                      child: Text(
                        "SIGN UP",
                        style: text25Bold(black),
                      )),
                  SizedBox(height: 4.h,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const SignIn()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: text14w500(white),
                        ),
                        Text(
                          "Login",
                          style: text14w500(primaryColor),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(40)
                ],
              ),
            )),
      ),
    );
  }
}
