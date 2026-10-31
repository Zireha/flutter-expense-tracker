import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/features/home/screen/components/expenses_card.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class RecentExpenses extends StatelessWidget {
  const RecentExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    final color = ColorTheme();

    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Expenses",
          style: fonts.secondaryHeading2.copyWith(
            color: color.secondaryColor,
            fontWeight: FontWeight.w800,
          ),
        ),
        Cards(
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: 3,
            separatorBuilder: (_, _) => Divider(
              color: color.altTextColor,
              height: 32,
              indent: 20,
              endIndent: 20,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ExpensesCard(
                children: [
                  Cards(
                    child: Icon(
                      Icons.fastfood_outlined,
                      size: 48,
                      color: color.secondaryColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        "Chicken Noodle",
                        style: fonts.primaryHeading3.copyWith(
                          color: color.secondaryColor,
                        ),
                      ),
                      Text(
                        "Food",
                        style: fonts.secondaryTitle.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    spacing: 4,
                    children: [
                      Text(
                        "12.30",
                        style: fonts.secondaryTitle.copyWith(
                          color: color.altTextColor,
                        ),
                      ),
                      Text(
                        "Rp15.000",
                        style: fonts.primaryHeading3.copyWith(
                          color: color.secondaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
