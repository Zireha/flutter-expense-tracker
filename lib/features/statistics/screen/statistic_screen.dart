import 'package:expense_tracker/core/utils/utils.dart';
import 'package:expense_tracker/features/global_components/custom_dropdown.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final color = ColorTheme();
    final util = Utils();

    return Scaffold(
      backgroundColor: color.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [
              // Month Dropdown
              Row(
                children: [
                  Expanded(flex: 2, child: SizedBox()),
                  Expanded(flex: 1, child: CustomDropdown(entries: util.month)),
                  Expanded(flex: 2, child: SizedBox()),
                ],
              ),

              // Pie Chart
              // Total Expense
              // Pie Chart statistic detail
            ],
          ),
        ),
      ),
    );
  }
}
