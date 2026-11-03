import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class StatisticsRowDetail extends StatelessWidget {
  final String categories;
  final String percentage;
  final String total;
  final Color categoryColor;
  const StatisticsRowDetail({
    super.key,
    required this.categories,
    required this.percentage,
    required this.total,
    required this.categoryColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = ColorTheme();
    final font = Fonts();

    return Row(
      spacing: 24,
      children: [
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: categoryColor,
            shape: BoxShape.circle,
            border: Border.all(color: color.secondaryColor, width: 2),
            boxShadow: [
              BoxShadow(
                blurRadius: 0,
                blurStyle: BlurStyle.solid,
                offset: Offset(4, 4),
                color: color.secondaryColor,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories,
                    style: font.secondaryTitle.copyWith(
                      color: color.secondaryColor,
                    ),
                  ),
                  Text(
                    percentage,
                    style: font.primaryHeading3.copyWith(
                      color: color.secondaryColor,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Text(
                total,
                style: font.primaryTitle.copyWith(
                  color: color.secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: color.secondaryColor,
            size: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
