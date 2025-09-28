import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double btnWidth;
  final double btnHeight;
  final double xPadding;
  final double yPadding;
  final double fontSize;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.btnWidth,
    required this.btnHeight,
    required this.xPadding,
    required this.yPadding,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: btnWidth,
      height: btnHeight,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff129575), // Green color
          foregroundColor: Colors.white, // White text
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: xPadding,
            vertical: yPadding,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
