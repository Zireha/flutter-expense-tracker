import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:flutter/material.dart';

import '../../../../themes/fonts.dart';

class ExpensesCard extends StatelessWidget {
  final List<Widget> children;
  final bool? spaceBetween;
  const ExpensesCard({super.key, required this.children, this.spaceBetween});

  @override
  Widget build(BuildContext context) {
    final fonts = Fonts();
    
    return Row(
      mainAxisAlignment: (spaceBetween != null && spaceBetween == true)
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.start,
      spacing: (spaceBetween != null && spaceBetween == true) ? 0 : 24,
      children: children,
    );
  }
}
