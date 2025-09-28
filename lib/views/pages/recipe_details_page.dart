import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipee_app/widgets/chef_profile.dart';
import 'package:recipee_app/widgets/hero.dart';

class RecipeDetailsPage extends StatelessWidget {
  const RecipeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(Icons.more_horiz, size: 40),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(),
            SizedBox(height: 12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "Spicy chiken burger with French fries",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "(13k Reviews)",
                    style: TextStyle(
                      color: Color(0xffA9A9A9),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ChefProfile(),
          ],
        ),
      ),
    );
  }
}
