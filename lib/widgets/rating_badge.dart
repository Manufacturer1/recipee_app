import 'package:flutter/material.dart';

class RatingBadge extends StatelessWidget {
  final double rating;
  const RatingBadge({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xffFFE1B3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Color(0xffFFAD30), size: 17),
          const SizedBox(width: 4),
          Text(
            rating.toString(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
    );
  }
}
