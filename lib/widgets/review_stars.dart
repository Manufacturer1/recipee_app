import 'package:flutter/material.dart';

class ReviewStars extends StatelessWidget {
  const ReviewStars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(Icons.star, color: Colors.amber, size: 16);
      }),
    );
  }
}
