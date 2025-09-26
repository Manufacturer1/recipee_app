import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/food_card.dart';

class Dishes extends StatefulWidget {
  const Dishes({super.key});

  @override
  State<Dishes> createState() => _DishesState();
}

class _DishesState extends State<Dishes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Foodcard(
              imageUrl: "assets/dish_1.png",
              title: "Classic Greek Salad",
              time: "12sa",
              rating: 3.4,
            ),
          ],
        ),
      ),
    );
  }
}
