// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, cart, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              "My Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 25),

            // list of items in cart
            Expanded(
              child: ListView.builder(
                itemCount: cart.getUserCart().length,
                itemBuilder: (context, index) {
                  // get individual shoe
                  Shoe shoe = cart.getUserCart()[index];

                  // return the cart item
                  return CartItem(shoe: shoe);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
