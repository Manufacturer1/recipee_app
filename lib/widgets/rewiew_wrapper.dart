import 'package:flutter/material.dart';
import 'package:recipee_app/data/mockData/review_list.dart';
import 'package:recipee_app/views/pages/recipe_details_page.dart';
import 'package:recipee_app/widgets/review.dart';

class ReviewWrapper extends StatefulWidget {
  const ReviewWrapper({super.key});

  @override
  State<ReviewWrapper> createState() => _ReviewWrapperState();
}

class _ReviewWrapperState extends State<ReviewWrapper> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New Recipes",
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...reviews.map(
                  (review) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Review(
                      imageUrl: review.imageUrl,
                      title: review.title,
                      time: review.time,
                      reviewerIcon: review.reviewerIcon,
                      reviewerName: review.reviewerName,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RecipeDetailsPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
