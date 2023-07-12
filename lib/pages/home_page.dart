import 'package:coffee_tutorial1/components/bottom_navigation_bar.dart';
import 'package:coffee_tutorial1/pages/shop_page.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //
  int _currentPage = 0;

  void selectedPage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  // pages

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        onTabChange: (index) => selectedPage(index),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 36,
              color: Colors.grey[800]
              ,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[500],
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  "Our Mission",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Our mission at Story Seed is to share the unique tastes of Colombia's coffee regions with the world, while cultivating interesting stories of inspiration. We partner directly with small local farms, ensuring ethical and sustainable practices every step of the way. From crop to cup, we're committed to quality and impact, delivering expertly roasted single-origin coffee that's both delicious and meaningful. Join us on a journey of taste, and discover the rich history and culture behind each bean.",
              style: TextStyle(color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      body: _pages[_currentPage],
    );
  }
}
