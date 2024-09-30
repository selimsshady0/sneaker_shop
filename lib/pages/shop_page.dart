import 'package:flutter/material.dart';
import 'package:sneaker_shop/constants.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search buton
        Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 26),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: kSearchText,
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "everyone flies.. some flay longer than others",
            style: kSearchText,
          ),
        ),

        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hot Picks 🔥", style: kHotPicks,),
              Text("See all", style: kSeeAll,),
            ],
          ),
        ),
      ],
    );
  }
}
