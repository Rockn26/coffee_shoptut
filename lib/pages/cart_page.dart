import 'package:coffee_tutorial1/components/coffee_tile.dart';
import 'package:coffee_tutorial1/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).removeFromCart(coffee);
  }

  // pay
  void payNow() {
    // pay
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
      builder: (context, value, child) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              "My Card",
              style: TextStyle(fontSize: 24),
            ),
          ),

          // list of usercart

          Expanded(
            child: ListView.builder(
              itemCount: value.userCart.length,
              itemBuilder: (context, index) {
                // individual coffee
                Coffee eachCoffee = value.userCart[index];

                // return tile
                return CoffeeTile(
                  coffee: eachCoffee,
                  icon: const Icon(Icons.delete),
                  onPressed: () => removeFromCart(eachCoffee),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total Price",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Pay Now",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // pay now
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Text(
                          "PayNow",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
