import 'package:flutter/material.dart';

class BookmarkButton extends StatefulWidget {
  final bool isBookmarked;
  final VoidCallback? onTap;
  const BookmarkButton({super.key, required this.isBookmarked, this.onTap});

  @override
  State<BookmarkButton> createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Image.asset(
            "assets/Union.png",
            width: 16,
            height: 16,
            fit: BoxFit.contain,
            color: widget.isBookmarked ? Color(0xff71B1A1) : Color(0xffA9A9A9),
          ),
        ),
      ),
    );
  }
}
