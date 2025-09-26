import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/category_filter.dart';
import 'package:recipee_app/widgets/dishes.dart';
import 'package:recipee_app/widgets/rewiew_wrapper.dart';
import 'package:recipee_app/widgets/search_recipee.dart';
import 'package:recipee_app/widgets/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Welcome(),
            SearchRecipee(),
            CategoryFilter(),
            Dishes(),
            ReviewWrapper(),
          ],
        ),
      ),
    );
  }
}
