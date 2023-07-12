import 'package:flutter/material.dart';

import '../models/coffee.dart';

class CoffeeTile extends StatelessWidget {
  Coffee coffee;
  Widget icon;
  void Function()? onPressed;

  CoffeeTile(
      {super.key,
      required this.coffee,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text('\$'+coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
