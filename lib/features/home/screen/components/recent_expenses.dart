import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/features/home/screen/components/expenses_card.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class RecentExpenses extends StatelessWidget {
  const RecentExpenses({super.key});

  @override
  Widget build(BuildContext context) {

    final fonts = Fonts();
    
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Expenses",
          style: fonts.secondaryHeading2.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        Cards(
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: 3,
            separatorBuilder: (_, _) => Divider(
              color: Colors.white60,
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
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        "Chicken Noodle",
                        style: fonts.primaryHeading3.copyWith(
                          color: Colors.white,
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
                          color: Colors.white70,
                        ),
                      ),
                      Text(
                        "Rp15.000",
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
