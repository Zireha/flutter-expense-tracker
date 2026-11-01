import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartStatistics extends StatefulWidget {
  const PieChartStatistics({super.key});

  @override
  State<PieChartStatistics> createState() => _PieChartStatisticsState();
}

class _PieChartStatisticsState extends State<PieChartStatistics> {
  int touchedIndex = -1;
  final colorTheme = ColorTheme();
  final font = Fonts();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  startDegreeOffset: -90.0,
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {});
                    },
                  ),
                  borderData: FlBorderData(
                    border: Border.all(
                      color: colorTheme.secondaryColor,
                      width: 2,
                    ),
                  ),
                  sectionsSpace: 8,
                  centerSpaceRadius: 60,
                  // later change to data from server and put it here
                  sections: sections(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> sections() {
    final radius = 50.0;

    return List.generate(4, (i) {
      return switch (i) {
        0 => PieChartSectionData(
          color: Colors.green.shade300,
          value: 17.0,
          radius: radius,
          showTitle: false,
          borderSide: BorderSide(
            color: colorTheme.secondaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          segments: [
            PieChartStackSegmentData(
              fromRadius: 0,
              toRadius: 10,
              color: colorTheme.secondaryColor
            ),
          ]
        ),
        1 => PieChartSectionData(
          color: Colors.blue.shade300,
          value: 10.0,
          radius: radius,
          showTitle: false,
          borderSide: BorderSide(
            color: colorTheme.secondaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          segments: [
            PieChartStackSegmentData(
              fromRadius: 0,
              toRadius: 10,
              color: colorTheme.secondaryColor
            ),
          ]
        ),
        2 => PieChartSectionData(
          color: Colors.red.shade300,
          value: 24.0,
          radius: radius,
          showTitle: false,
          borderSide: BorderSide(
            color: colorTheme.secondaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          segments: [
            PieChartStackSegmentData(
              fromRadius: 0,
              toRadius: 10,
              color: colorTheme.secondaryColor
            ),
          ]
        ),
        3 => PieChartSectionData(
          color: Colors.yellow.shade300,
          value: 49.0,
          radius: radius,
          showTitle: false,
          borderSide: BorderSide(
            color: colorTheme.secondaryColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          segments: [
            PieChartStackSegmentData(
              fromRadius: 0,
              toRadius: 10,
              color: colorTheme.secondaryColor
            ),
          ]
        ),
        _ => throw StateError("Invalid"),
      };
    });
  }
}
