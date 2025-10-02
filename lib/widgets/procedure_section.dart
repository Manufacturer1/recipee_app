import 'package:flutter/material.dart';
import 'package:recipee_app/widgets/custom_eleveted_btn.dart';

class ProcedureSection extends StatelessWidget {
  const ProcedureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 40),
      child: Row(
        children: [
          CustomElevatedButton(
            text: "Ingredient",
            btnWidth: 150,
            btnHeight: 37,
            xPadding: 8,
            yPadding: 8,
            fontSize: 13,
          ),
          SizedBox(width: 80),
          Text(
            "Procedure",
            style: TextStyle(
              color: Color(0xff71B1A1),
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
