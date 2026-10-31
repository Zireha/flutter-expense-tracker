import 'package:expense_tracker/themes/color_theme.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});
  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  final color = ColorTheme();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 64,
        height: 64,
        child: FittedBox(
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.primaryColor,
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
            child: Icon(Icons.add, size: 36, color: color.secondaryColor),
          ),
        ),
      ),
    );
  }
}
