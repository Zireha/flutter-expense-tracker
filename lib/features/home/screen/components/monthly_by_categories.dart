import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/features/home/screen/components/expenses_card.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class MonthlyByCategories extends StatelessWidget {
  const MonthlyByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    final List cardCategories = [
      [Icons.fastfood_outlined, "Food", "Rp124.000"],
      [Icons.emoji_transportation_outlined ,"Transportation", "Rp242.000"],
      [Icons.local_grocery_store_outlined,  "Groceries", "Rp250.000"],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          "This month by categories",
          style: fonts.secondaryHeading2.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        Cards(
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: cardCategories.length,
            shrinkWrap: true,
            separatorBuilder: (_, _) => Divider(
              color: Colors.white60,
              height: 32,
              indent: 20,
              endIndent: 20,
            ),
            itemBuilder: (context, index) {
              final item = cardCategories[index];

              return ExpensesCard(
                spaceBetween: false,
                children: [
                  Cards(
                    child: Icon(
                      item[0],
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        item[1],
                        style: fonts.secondaryTitle.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        item[2],
                        style: fonts.primaryHeading3.copyWith(
                          color: Colors.white,
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
