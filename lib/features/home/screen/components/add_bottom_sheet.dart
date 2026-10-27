import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();

    return Container(
      color: Color(0xff332F42),
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Add Expenses",
              style: fonts.primaryHeading2.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What did you spend your money for?",
                style: fonts.secondaryTitle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Ali's Kebab",
                  border: InputBorder(borderSide: 
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
