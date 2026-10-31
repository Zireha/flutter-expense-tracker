import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class HeaderStatistics extends StatelessWidget {
  const HeaderStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    final color = ColorTheme();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Afternoon",
              style: fonts.secondarySubtitle.copyWith(color: color.secondaryColor),
            ),
            Text(
              "Adam Brooks",
              style: fonts.primaryHeading3.copyWith(
                color: color.secondaryColor,
                fontWeight: FontWeight.w800,
              ),
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
                      color: color.altTextColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Rp53.000",
                    style: fonts.primaryHeading1.copyWith(
                      color: color.secondaryColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.keyboard_control,
                  size: 32,
                  color: color.secondaryColor,
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
                        color: color.altTextColor,
                      ),
                    ),
                    Text(
                      "Rp50.000/Day",
                      style: fonts.primarySubtitle.copyWith(
                        color: color.secondaryColor,
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
                        color: color.altTextColor,
                      ),
                    ),
                    Text(
                      "Rp50.000",
                      style: fonts.primarySubtitle.copyWith(
                        color: color.secondaryColor,
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
