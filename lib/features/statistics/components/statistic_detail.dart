import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/features/statistics/components/statistics_row_detail.dart';
import 'package:flutter/material.dart';

class StatisticDetail extends StatelessWidget {
  final List data;
  const StatisticDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Cards(
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        separatorBuilder: (_, _) => SizedBox(height: 12),
        itemBuilder: (listContext, index) {
          return StatisticsRowDetail(
            categoryColor: data[index][0],
            categories: data[index][1],
            percentage: data[index][2],
            total: data[index][3],
          );
        },
      ),
    );
  }
}
