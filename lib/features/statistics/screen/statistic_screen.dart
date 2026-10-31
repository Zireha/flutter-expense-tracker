import 'package:expense_tracker/features/statistics/components/month_dropdown.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final color = ColorTheme();

    return Scaffold(
      backgroundColor: color.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [MonthDropdown(isCenter: true)],
          ),
        ),
      ),
    );
  }
}
