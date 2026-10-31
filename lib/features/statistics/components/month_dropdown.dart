import 'dart:collection';

import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

const List<String> months = [
  "Jan",
  "Feb",
  "Mar",
  "Apr",
  "May",
  "Jun",
  "Jul",
  "Aug",
  "Sep",
  "Oct",
  "Nov",
  "Dec",
];

class MonthDropdown extends StatefulWidget {
  final bool isCenter;

  const MonthDropdown({super.key, this.isCenter = false});

  @override
  State<MonthDropdown> createState() => _MonthDropdownState();
}

typedef MonthEntry = DropdownMenuEntry<String>;

class _MonthDropdownState extends State<MonthDropdown> {
  static final List<MonthEntry> monthEntries = UnmodifiableListView<MonthEntry>(
    months.map<MonthEntry>(
      (String month) => MonthEntry(value: month, label: month),
    ),
  );

  String dropdownVal = months.first;

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    final color = ColorTheme();

    return widget.isCenter
        ? Center(
            child: Container(
              decoration: BoxDecoration(
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
              child: DropdownMenu<String>(
                inputDecorationTheme: InputDecorationTheme(
                  filled: true,
                  fillColor: color.primaryColor,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: color.secondaryColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                selectOnly: true,
                textStyle: fonts.primaryTitle.copyWith(color: color.secondaryColor),
                initialSelection: months.first,
                onSelected: (String? val) {
                  // change it to riverpod later
                  setState(() {
                    dropdownVal = val!;
                  });
                },
                dropdownMenuEntries: monthEntries,
                menuStyle: MenuStyle(
                  backgroundColor: WidgetStateColor.resolveWith(
                    (_) => color.primaryColor,
                  ),
                  surfaceTintColor: WidgetStateColor.resolveWith(
                    (_) => color.secondaryColor,
                  ),
                  side: WidgetStateBorderSide.resolveWith(
                    (_) => BorderSide(color: color.secondaryColor),
                  ),
                ),
              ),
            ),
          )
        : Container(
            decoration: BoxDecoration(
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
            child: DropdownMenu<String>(
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: color.primaryColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: color.secondaryColor),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              selectOnly: true,
              textStyle: fonts.primaryTitle.copyWith(color: color.secondaryColor),
              initialSelection: months.first,
              onSelected: (String? val) {
                // change it to riverpod later
                setState(() {
                  dropdownVal = val!;
                });
              },
              dropdownMenuEntries: monthEntries,
              menuStyle: MenuStyle(
                backgroundColor: WidgetStateColor.resolveWith(
                  (_) => color.primaryColor,
                ),
                surfaceTintColor: WidgetStateColor.resolveWith(
                  (_) => color.secondaryColor,
                ),
                side: WidgetStateBorderSide.resolveWith(
                  (_) => BorderSide(color: color.secondaryColor),
                ),
              ),
            ),
          );
  }
}
