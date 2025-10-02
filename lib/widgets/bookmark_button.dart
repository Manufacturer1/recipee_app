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
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Image.asset(
            "assets/Union.png",
            width: 15,
            height: 15,
            fit: BoxFit.contain,
            color: widget.isBookmarked ? Color(0xff71B1A1) : Color(0xffA9A9A9),
          ),
        ),
      ),
    );
  }
}
