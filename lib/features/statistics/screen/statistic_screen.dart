import 'package:expense_tracker/core/utils/utils.dart';
import 'package:expense_tracker/features/global_components/custom_dropdown.dart';
import 'package:expense_tracker/features/statistics/components/pie_chart_statistics.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final color = ColorTheme();
    final util = Utils();
    final fonts = Fonts();

    return SafeArea(
      child: Scaffold(
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
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                      flex: 1,
                      child: CustomDropdown(entries: util.month),
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                  ],
                ),

                // Pie Chart
                PieChartStatistics(),
                // SizedBox(height: 12),
                // Total Expense
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 8,
                  children: [
                    Text(
                      "Total Expense",
                      style: fonts.secondaryTitle.copyWith(
                        color: color.secondaryColor,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff332F42),
                        border: Border.all(
                          color: color.secondaryColor,
                          width: 2,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0,
                            blurStyle: BlurStyle.solid,
                            offset: Offset(4, 4),
                            color: color.secondaryColor,
                          ),
                        ],
                      ),
                      child: Text(
                        "Rp1.632.000",
                        style: fonts.primaryHeading2.copyWith(
                          color: color.secondaryColor,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                    ),
                  ],
                ),
                // Pie Chart statistic detail
                // 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
