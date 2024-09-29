import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.heart_broken),
        ],
      ),
    );
  }
}
