import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class HeaderStatistics extends StatelessWidget {
  const HeaderStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Afternoon",
              style: fonts.secondarySubtitle.copyWith(color: Colors.white),
            ),
            Text(
              "Adam Brooks",
              style: fonts.primaryHeading3.copyWith(color: Colors.white, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        Cards(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    "This month's total expense",
                    style: fonts.secondaryTitle.copyWith(
                      color: Colors.white60,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Rp53.000",
                    style: fonts.primaryHeading1.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.keyboard_control,
                  size: 32,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 20,
          children: [
            Expanded(
              child: Cards(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Target Expenses",
                      style: fonts.secondarySubtitle.copyWith(
                        color: Colors.white60,
                      ),
                    ),
                    Text(
                      "Rp50.000/Day",
                      style: fonts.primarySubtitle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Cards(
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today Spent",
                      style: fonts.secondarySubtitle.copyWith(
                        color: Colors.white60,
                      ),
                    ),
                    Text(
                      "Rp50.000",
                      style: fonts.primarySubtitle.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}