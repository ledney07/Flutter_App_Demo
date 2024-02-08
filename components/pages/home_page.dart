import 'package:demo/components/bottom_nav.dart';
import 'package:demo/pages/cart_page.dart';
import 'package:demo/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // selection index is to convert the bottom nav bar
  int _selectionIndex = 0;

  // updated our selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectionIndex = index;
    });
  }

  // Display the pages
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectionIndex],
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // logo
            Column(children: [
              DrawerHeader(
                child: Image.asset(
                  'lib/images/Yeezy.png',
                  color: Colors.grey[500],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold, // Make the text bold
                      fontSize: 18, // Customize the font size
                      height: 1.8, // Set line spacing
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold, // Make the text bold
                      fontSize: 18, // Customize the font size
                      height: 1.8, // Set line spacing
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.contacts,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold, // Make the text bold
                      fontSize: 18, // Customize the font size
                      height: 1.8, // Set line spacing
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                  title: Text(
                    'Setting',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold, // Make the text bold
                      fontSize: 18, // Customize the font size
                      height: 1.8, // Set line spacing
                    ),
                  ),
                ),
              ),
            ]),

            // Log Out
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.grey,
                ),
                title: Text(
                  'LogOut',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold, // Make the text bold
                    fontSize: 18, // Customize the font size
                    height: 1.8, // Set line spacing
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
