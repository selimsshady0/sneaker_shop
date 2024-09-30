import 'package:flutter/material.dart';
import 'package:sneaker_shop/constants.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[100],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          Image.asset(shoe.imagePath),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              shoe.description,
              style: kShoeDescription,
            ),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Shoe Name
                    Text(shoe.name, style: kShoeName,),
            
                    const SizedBox(height: 5,),
            
                    // price
                    Text("\$${shoe.price}", style: kShoePrice,),
                  ],
                ),
            
                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
