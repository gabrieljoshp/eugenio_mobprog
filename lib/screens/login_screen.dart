import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_textformfield.dart';
import '../widgets/custom_inkwell_button.dart';
import '../widgets/custom_dialogs.dart';
import '../constants.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Validation method for username
  String? _validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your username';
    }
    if (value.length < 3) {
      return 'Username must be at least 3 characters';
    }
    return null;
  }

  // Validation method for password
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter your password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  // Login validation and dialog display
  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Save username to shared preferences or local storage
      final username = usernameController.text;

      customDialog(
        context,
        title: 'Login Successful!',
        content: 'Welcome, $username!',
      ).then((_) {
        // Navigate to profile screen after dialog
        Navigator.pushReplacementNamed(context, '/home', arguments: username);
      });
    } else {
      // Show validation error dialog
      customDialog(
        context,
        title: 'Invalid Input',
        content: 'Please check all fields and try again.',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(40),
                  color: FB_DARK_PRIMARY,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(25),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/NUCCITLogo_Black.png',
                        height: ScreenUtil().setHeight(200),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(30)),
                      CustomTextFormField(
                        height: ScreenUtil().setHeight(10),
                        width: ScreenUtil().setWidth(10),
                        controller: usernameController,
                        validator: _validateUsername,
                        onSaved: (value) => usernameController.text = value!,
                        fontSize: ScreenUtil().setSp(15),
                        fontColor: FB_DARK_PRIMARY,
                        hintTextSize: ScreenUtil().setSp(15),
                        hintText: 'Username',
                      ),
                      SizedBox(height: ScreenUtil().setHeight(10)),
                      CustomTextFormField(
                        height: ScreenUtil().setHeight(10),
                        width: ScreenUtil().setWidth(10),
                        controller: passwordController,
                        isObscure: true,
                        validator: _validatePassword,
                        onSaved: (value) => passwordController.text = value!,
                        fontSize: ScreenUtil().setSp(15),
                        fontColor: FB_DARK_PRIMARY,
                        hintTextSize: ScreenUtil().setSp(15),
                        hintText: 'Password',
                      ),
                      SizedBox(height: ScreenUtil().setHeight(50)),
                      CustomInkwellButton(
                        onTap: _handleLogin,
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().screenWidth,
                        buttonName: 'Login',
                        fontSize: ScreenUtil().setSp(18),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(40),
                  color: FB_DARK_PRIMARY,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey.shade200,
                          fontSize: ScreenUtil().setSp(15),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.popAndPushNamed(context, '/register'),
                        child: Text(
                          ' Register here!',
                          style: TextStyle(
                            color: FB_TEXT_COLOR_WHITE,
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
