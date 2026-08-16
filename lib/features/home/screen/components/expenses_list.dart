import 'package:expense_tracker/features/home/screen/components/expenses_tile.dart';
import 'package:flutter/material.dart';
import '../../../../themes/fonts.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recent Expenses",
              style: Fonts.primarySubtitle1Bold.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              "See More",
              style: Fonts.primarySubtitle2.copyWith(
                color: Colors.white54,
              ),
            ),
          ],
        ),
        ListView.separated(
          padding: const EdgeInsets.only(bottom: 28),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          separatorBuilder: (_, _) => SizedBox(height: 8),
          itemBuilder: (context, index) {
            return ExpensesTile();
          },
        ),
      ],
    );
  }
}