import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';
import 'auth/signup.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          height: 50,
                          width: 75,
                          fit: BoxFit.fill,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 35.w,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Image.asset("assets/onboard.png"),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Text(
                          "SPORTS AT\nYOUR\nDOORSTEP",
                          style: TextStyle(
                              fontSize: 40.sp,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              color: primaryColor),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'With "Little Leagues" can boast of facilities otherwise With "Little Leagues" can boast of facilities otherwise With "Little Leagues" can boast of facilities otherwise With "Little Leagues" can boast of facilities otherwise',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              wordSpacing: 2,
                              height: 1.5),
                        ),
                        SizedBox(
                          height: 45.h,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                minimumSize: Size(
                                    MediaQuery.of(context).size.width * .75, 60)),
                            child: Text(
                              "ARE YOU INTERESTED?",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  )
                ],
              ),
            )),
      ),
    );
  }
}