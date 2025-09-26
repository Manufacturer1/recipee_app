import 'package:flutter/material.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({super.key});

  @override
  State<CategoryFilter> createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  String selectedCategory = 'All';

  final List<String> categories = [
    'All',
    'Indian',
    'Italian',
    'Asian',
    'Chinese',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, bottom: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) {
            final isSelected = selectedCategory == category;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedCategory = category;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Color(0xff129575) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  category,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Color(0xff71B1A1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
