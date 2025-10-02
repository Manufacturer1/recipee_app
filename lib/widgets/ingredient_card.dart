import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/ingredient_image_wrapper.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 18),
      width: double.infinity,
      height: 76,
      decoration: BoxDecoration(
        color: Color(0x80D9D9D9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IngredientImageWrapper(imageName: "assets/tomatoes.png"),
              SizedBox(width: 10),
              Text(
                "Tomatos",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff121212),
                ),
              ),
            ],
          ),
          Text(
            "500g",
            style: TextStyle(
              color: Color(0xffA9A9A9),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
