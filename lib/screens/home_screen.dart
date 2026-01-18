import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
import '../screens/notification_screen.dart';
import '../screens/newsfeed_screen.dart';
import '../screens/profile_screen.dart';
import '../widgets/custom_font.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  String? username;

  String _getAppBarTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'MukhangLibro';
      case 1:
        return 'Notifications';
      case 2:
        return username ?? 'Profile';
      default:
        return 'MukhangLibro';
    }
  }

  @override
  Widget build(BuildContext context) {
    username ??= ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        shadowColor: FB_TEXT_COLOR_WHITE,
        elevation: 2,
        title: CustomFont(
          text: _getAppBarTitle(),
          fontSize: ScreenUtil().setSp(25),
          color: FB_PRIMARY,
          fontFamily: 'Klavika',
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsFeedScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //selected item
        showUnselectedLabels: false, //unselected item
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: FB_DARK_PRIMARY,
        currentIndex: _selectedIndex,
      ),
    );
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
