import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipee_app/data/mockData/ingredient_list.dart';
import 'package:recipee_app/widgets/ingredient_card.dart';

class IngredientCardWrapper extends StatelessWidget {
  const IngredientCardWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/serve.svg",
                    width: 20,
                    height: 20,
                    colorFilter: const ColorFilter.mode(
                      Color(0xffA9A9A9),
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "1 serve",
                    style: TextStyle(
                      color: Color(0xffA9A9A9),
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Text(
                "10 Items",
                style: TextStyle(
                  color: Color(0xffA9A9A9),
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 380, // or MediaQuery.of(context).size.height * 0.4
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...ingredients.map(
                    (ingredient) => Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: IngredientCard(
                        ingredientImageName: ingredient.imageName,
                        ingredientName: ingredient.ingredientName,
                        quantity: ingredient.quantity,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
