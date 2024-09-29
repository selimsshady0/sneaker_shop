import 'package:flutter/material.dart';
import 'package:sneaker_shop/constants.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Nike logo
            Image.asset(
              "lib/images/nike.png",
              width: 250,
            ),

            const SizedBox(
              height: 46,
            ),

            // Just do it text
            const Text(
              "Just Do It",
              style: kIntroTitle,
            ),

            const SizedBox(
              height: 16,
            ),

            // Describe
            const Text(
              "Brand new sneakers and custom kicks made with premium quality",
              style: kIntroSubTitle,
              textAlign: TextAlign.center,
            ),

            const SizedBox(
              height: 46,
            ),

            // Shop Now Button
            Container(
              width: double.infinity,
              height: 66,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  "Shop Now",
                  style: kIntroButton,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
