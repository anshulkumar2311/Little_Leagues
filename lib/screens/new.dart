import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';
import 'auth/signin.dart';
import 'auth/signup.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
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
            children: [],
          )
        )),
      ),
    );
  }
}
