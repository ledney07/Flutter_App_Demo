// ignore_for_file: library_private_types_in_public_api

import 'package:demo/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  bool showContent = false;

  @override
  void initState() {
    super.initState();
    // Delay the animation to start after 4 seconds
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showContent = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              AnimatedOpacity(
                opacity: 1.0,
                duration: Durations(seconds: 2),
                curve: Curves.easeInOut,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'lib/images/Yeezy.png',
                    height: 300,
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              // Animated title
              AnimatedOpacity(
                opacity: showContent ? 1.0 : 0.0,
                duration: Durations(seconds: 3),
                curve: Curves.easeInOut,
                child: const Text(
                  'Fresh for Less',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Animated subtitle
              AnimatedOpacity(
                opacity: showContent ? 1.0 : 0.0,
                duration: const Duration(seconds: 4),
                curve: Curves.easeInOut,
                child: const Text(
                  'A new era sneakers for a future generation that custom with the next technology and best premium quality.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 40),

              // Animated start button
              AnimatedOpacity(
                opacity: showContent ? 1.0 : 0.0,
                duration: const Duration(seconds: 4),
                curve: Curves.easeInOut,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
