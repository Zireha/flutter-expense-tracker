import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class ExpensesTile extends StatelessWidget {
  const ExpensesTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Cards(
          child: Row(
            spacing: 12,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Pixel.coffeealt,
                size: 48,
                color: Colors.white,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Snacks",
                      style: Fonts.primarySubtitle1Bold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Rp8000",
                      style: Fonts.secondaryBody2.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
