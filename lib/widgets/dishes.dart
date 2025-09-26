import 'package:flutter/material.dart';
import 'package:recipee_app/data/dish_list.dart';
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
            ...dishes.map(
              (dish) => Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Foodcard(
                  imageUrl: dish.imageUrl,
                  title: dish.title,
                  time: dish.time,
                  rating: dish.rating,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
