import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/review_stars.dart';

class Review extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String reviewerIcon;
  final String reviewerName;
  final String time;

  const Review({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.reviewerIcon,
    required this.reviewerName,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF2C2C2C),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 6),

              // Star Rating
              ReviewStars(),
              const SizedBox(height: 10),

              // Bottom Row: Reviewer Info and Time
              Row(
                children: [
                  // Reviewer Avatar
                  ClipOval(
                    child: Image.asset(
                      reviewerIcon,
                      width: 28,
                      height: 28,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 6),

                  // Reviewer Name
                  Expanded(
                    child: Text(
                      'By $reviewerName',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF9E9E9E),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  // Time Icon and Text
                  const Icon(
                    Icons.access_time,
                    size: 14,
                    color: Color(0xFF9E9E9E),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF9E9E9E),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Circular Food Image (positioned at top right)
          Positioned(
            top: -30,
            right: -10,
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipOval(child: Image.asset(imageUrl, fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
