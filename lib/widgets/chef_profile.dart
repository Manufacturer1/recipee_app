import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/custom_eleveted_btn.dart';

class ChefProfile extends StatelessWidget {
  const ChefProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/reviewer_2.png",
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Laura Wilson",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Transform.translate(
                        offset: const Offset(-3, 0),
                        child: const Icon(
                          Icons.location_on,
                          size: 17,
                          color: Color(0xff71B1A1),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(-3, 0),
                        child: const Text(
                          "Lagos, Nigeria",
                          style: TextStyle(
                            color: Color(0xffA9A9A9),
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          CustomElevatedButton(
            text: "Follow",
            btnHeight: 37,
            btnWidth: 85,
            xPadding: 20,
            yPadding: 10,
            fontSize: 13,
          ),
        ],
      ),
    );
  }
}
