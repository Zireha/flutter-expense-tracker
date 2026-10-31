import 'dart:collection';

import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> entries;
  const CustomDropdown({super.key, required this.entries});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

typedef DropdownEntries = DropdownMenuEntry<String>;

class _CustomDropdownState extends State<CustomDropdown> {
  late final List<DropdownEntries> dropdownEntries;
  late String dropdownValueEntry;
  final fonts = Fonts();
  final color = ColorTheme();

  @override
  void initState() {
    super.initState();
    dropdownEntries = UnmodifiableListView<DropdownEntries>(
      widget.entries.map<DropdownEntries>(
        (String entry) => DropdownEntries(
          value: entry,
          label: entry,
          style: ButtonStyle(
            textStyle: WidgetStateTextStyle.resolveWith(
              (_) => fonts.secondaryTitle,
            ),
            foregroundColor: WidgetStateColor.resolveWith(
              (_) => color.secondaryColor,
            ),
          ),
        ),
      ),
    );

    dropdownValueEntry = widget.entries.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        width: double.maxFinite,
        dropdownMenuEntries: dropdownEntries,
        trailingIcon: Icon(Icons.arrow_drop_down, color: color.secondaryColor),
        selectedTrailingIcon: Icon(
          Icons.arrow_drop_up,
          color: color.secondaryColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          iconColor: color.secondaryColor,
          filled: true,
          fillColor: color.primaryColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color.secondaryColor),
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        selectOnly: true,
        textStyle: fonts.secondaryTitle.copyWith(color: color.secondaryColor),
        initialSelection: widget.entries.first,
        onSelected: (String? val) {
          // don't forget change it riverpod later
          setState(() {
            dropdownValueEntry = val!;
          });
        },
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
