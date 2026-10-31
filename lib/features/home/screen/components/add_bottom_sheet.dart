import 'package:expense_tracker/features/global_components/custom_dropdown.dart';
import 'package:expense_tracker/themes/color_theme.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    final color = ColorTheme();

    final List<String> categoryEntries = [
      "Food",
      "Groceries",
      "Transportation",
      "Bills",
    ];

    return Container(
      color: Color(0xff332F42),
      width: double.maxFinite,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Add Expenses",
              style: fonts.primaryHeading2.copyWith(
                color: color.secondaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Add Form
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Field 1: Spent for what?
              Text(
                "What did you spend your money for?",
                style: fonts.secondaryTitle.copyWith(
                  color: color.secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.only(left: 12),
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Ali's Kebab",
                    hintStyle: fonts.secondaryTitle.copyWith(
                      color: color.hintTextColor,
                    ),
                    border: InputBorder.none,
                  ),
                  style: fonts.secondaryTitle.copyWith(
                    color: color.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Field 2: How much did you spend?
              Text(
                "How much did you spend?",
                style: fonts.secondaryTitle.copyWith(
                  color: color.secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.only(left: 12),
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
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    hintText: "30.000",
                    hintStyle: fonts.secondaryTitle.copyWith(
                      color: Colors.white30,
                    ),
                    border: InputBorder.none,
                  ),
                  style: fonts.secondaryTitle.copyWith(
                    color: color.secondaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Field 3, dropdown: Category Pick
              Text(
                "It is belong to the category of?",
                style: fonts.secondaryTitle.copyWith(
                  color: color.secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              CustomDropdown(entries: categoryEntries),
              SizedBox(height: 16),
              // Field 4, date picker: Time Spent
              Text(
                "It was spent at",
                style: fonts.secondaryTitle.copyWith(
                  color: color.secondaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.only(left: 0),
                decoration: BoxDecoration(
                  color: Color(0xff332F42),
                  border: Border.all(color: color.primaryColor, width: 2),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0,
                      blurStyle: BlurStyle.solid,
                      offset: Offset(4, 4),
                      color: color.primaryColor,
                    ),
                  ],
                ),
                child: Placeholder(fallbackHeight: 50),
              ),
              SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
