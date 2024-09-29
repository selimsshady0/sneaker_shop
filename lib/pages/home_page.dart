import 'package:flutter/material.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}