import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getIsLogin();
    super.initState();
  }

  void getIsLogin() {
    Timer(
      const Duration(seconds: 4),
      () => Navigator.popAndPushNamed(context, '/login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        height: ScreenUtil().screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/NUCCITLogo_Black.png'),
            SizedBox(height: ScreenUtil().setHeight(120)),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(FB_DARK_PRIMARY),
            ),
          ],
        ),
      ),
    );
  }
}
