import 'package:expense_tracker/themes/color_theme.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Widget child;
  const Cards({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final color = ColorTheme();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff332F42),
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
      child: child,
    );
  }
}
