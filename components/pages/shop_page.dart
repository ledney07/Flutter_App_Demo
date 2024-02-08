import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Shop page',
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
