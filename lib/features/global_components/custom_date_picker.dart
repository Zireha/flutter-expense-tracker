import 'package:expense_tracker/core/utils/utils.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(2000, 8),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != selectedDate) {
      // change to riverpod later
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    final color = ColorTheme();
    final util = Utils();

    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        width: double.maxFinite,
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
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                util.timeFormatter(selectedDate),
                style: fonts.secondaryTitle.copyWith(
                  color: color.secondaryColor,
                ),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: color.secondaryColor,
                size: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
