import 'package:flutter/material.dart';
import 'package:pay_pal/navbar_screen/home_screen/home_screen.dart';
import 'package:pay_pal/navbar_screen/money_screen.dart';
import 'package:pay_pal/navbar_screen/profile_screen.dart';
import 'package:pay_pal/navbar_screen/setting_screen.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  List page=[HomeScreen(),ProfleScreen(),MoneyScreen(),SettingScreen()];
  int selectIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.deepOrange,
          onTap: (value) {
          setState(() {
            selectIndex=value;
          });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Money'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
      ]),
    );
  }
}
