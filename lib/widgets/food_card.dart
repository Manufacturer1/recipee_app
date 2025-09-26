import 'package:flutter/material.dart';

class Foodcard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String time;
  final double rating;

  const Foodcard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.time,
    required this.rating,
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
      padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffD9D9D9).withAlpha((0.5 * 255).toInt()),
      ),
      width: 180,
      height: 195,
      child: Column(
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
                      width: 130,
                      height: 130,
                      fit: BoxFit.contain,
                    ),
                  ),
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
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
