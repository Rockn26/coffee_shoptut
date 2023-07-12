import 'package:coffee_tutorial1/components/coffee_tile.dart';
import 'package:coffee_tutorial1/models/coffee.dart';
import 'package:coffee_tutorial1/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add item to cart
  void addItemToCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffee);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "How would you like your coffee ?",
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 30),

          // coffee list
          Expanded(
            child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index) {
                // individual coffee
                Coffee eachCoffee = value.coffeeShop[index];

                // return list tile
                return CoffeeTile(
                  coffee: eachCoffee,
                  icon: const Icon(Icons.add),
                  onPressed: () => addItemToCart(eachCoffee),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
