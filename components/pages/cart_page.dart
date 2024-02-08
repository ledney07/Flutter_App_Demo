import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Cart Page',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold, // Make the text bold
          fontSize: 28, // Customize the font size
          height: 1.8, // Set line spacing
        ),
      ),
    );
  }
}
