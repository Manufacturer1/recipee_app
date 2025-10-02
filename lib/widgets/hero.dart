import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/bookmark_button.dart';
import 'package:recipee_app/widgets/rating_badge.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Image.asset(
              "assets/hero.png",
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150,
            ),
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Color.fromRGBO(0, 0, 0, 0.7)],
                  stops: [0.3, 1.0],
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const RatingBadge(rating: 4.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Color(0xffD9D9D9),
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "20 min",
                          style: TextStyle(
                            color: Color(0xffD9D9D9),
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(width: 10),
                        BookmarkButton(
                          isBookmarked: isBookmarked,
                          onTap: () {
                            setState(() {
                              isBookmarked = !isBookmarked;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
