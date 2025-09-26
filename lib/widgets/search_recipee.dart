import 'package:flutter/material.dart';

class SearchRecipee extends StatelessWidget {
  const SearchRecipee({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.7,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search recipe",
                hintStyle: TextStyle(color: Color(0xffD9D9D9), fontSize: 14),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/search-normal.png",
                    width: 20,
                    height: 20,
                    color: Color(0xffD9D9D9),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // rounded corners
                  borderSide: const BorderSide(
                    color: Color(0xffD9D9D9), // border color
                    width: 1.3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xffD9D9D9), // keep same color on focus
                    width: 1.3,
                  ),
                ),
              ),
            ),
          ),

          TextButton(
            onPressed: () {
              // Add your onPressed logic here
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF129575),
              minimumSize: const Size(50, 50),
              maximumSize: const Size(50, 50),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Icon(Icons.tune, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
