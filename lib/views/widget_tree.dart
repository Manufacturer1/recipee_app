import 'package:flutter/material.dart';
import 'package:recipee_app/views/pages/home_page.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomePage());
  }
}
