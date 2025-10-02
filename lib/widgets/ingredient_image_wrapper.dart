import 'package:flutter/material.dart';

class IngredientImageWrapper extends StatelessWidget {
  final String imageName;
  const IngredientImageWrapper({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(imageName, width: 40, height: 40),
    );
  }
}
