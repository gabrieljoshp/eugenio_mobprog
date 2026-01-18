import 'package:eugenio_mobprog/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/home_screen.dart';
import 'screens/newsfeed_screen.dart';
import 'screens/register_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/login',
          routes: {
            '/newsfeed': (context) => const NewsFeedScreen(),
            '/home': (context) => const HomeScreen(),
            '/login': (context) => const LogInScreen(),
            '/register': (context) => const RegisterScreen(),
            '/profile': (context) => const ProfileScreen(),
          },
        );
      },
    );
  }
}
