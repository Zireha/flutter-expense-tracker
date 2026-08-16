import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:flutter/material.dart';

import '../../../../themes/fonts.dart';

class Expenses extends StatelessWidget {
  const Expenses({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Cards(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Today Expenses",
                    style: Fonts.primarySubtitle1.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Rp54.000,00",
                    style: Fonts.primaryTitleBold.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Rp12.000 more than yesterday",
                    style: Fonts.secondaryBody2.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    "Weekly Expense",
                    style: Fonts.primarySubtitle2.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Rp230.000,00",
                    style: Fonts.primarySubtitle1.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(width: 12),
            Cards(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    "Monthly Expense",
                    style: Fonts.primarySubtitle2.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Rp230.000,00",
                    style: Fonts.primarySubtitle1.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
