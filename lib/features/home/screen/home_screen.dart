import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/features/home/screen/components/expenses_card.dart';
import 'package:expense_tracker/features/home/screen/components/header_statistics.dart';
import 'package:expense_tracker/features/home/screen/components/monthly_by_categories.dart';
import 'package:expense_tracker/features/home/screen/components/recent_expenses.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();

    return Scaffold(
      backgroundColor: Color(0xff332F42),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              HeaderStatistics(),
              RecentExpenses(),
              MonthlyByCategories()
            ],
          ),
        ),
      ),
    );
  }
}
