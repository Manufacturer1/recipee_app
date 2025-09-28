import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/bookmark_button.dart';
import 'package:recipee_app/widgets/rating_badge.dart';

class Foodcard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String time;
  final double rating;
  final VoidCallback? onTap; // Add onTap callback

  const Foodcard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.rating,
    this.onTap, // Optional navigation callback
  });

  @override
  State<Foodcard> createState() => _FoodcardState();
}

class _FoodcardState extends State<Foodcard> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      width: 160,
      height: 175,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: widget.onTap,
          child: Container(
            padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xffD9D9D9).withAlpha((0.5 * 255).toInt()),
            ),
            width: 160,
            height: 175,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -70,
                            child: ClipOval(
                              child: Image.asset(
                                widget.imageUrl,
                                width: 120,
                                height: 120,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            right: -10,
                            top: -30,
                            child: RatingBadge(rating: widget.rating),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.title,
                      style: TextStyle(
                        color: Color(0xff484848),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Color(0xffA9A9A9),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          widget.time,
                          style: TextStyle(
                            color: Color(0xff484848),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
