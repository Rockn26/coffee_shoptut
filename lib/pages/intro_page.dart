import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          // asset
          Image.asset("lib/images/coffee.png"),
          const SizedBox(height: 36),
          // text
          const Text(
            "WE CREATE YOUR TASTE",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // sub title
          Text(
            "It's the highest level of coffee you can buy, graded by certified “Quality Graders” who have taste buds that are unbelievably precise. You know… the “oh yes, I'm getting a note of raw chocolate from southern Madagascar” type.",
            style: TextStyle(color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),

          const Spacer(),

          // start button
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              margin: const EdgeInsets.all(24),
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Shop Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          const Spacer()
        ],
      ),
    );
  }
}
