import 'package:expense_tracker/features/home/screen/components/expenses.dart';
import 'package:expense_tracker/features/home/screen/components/expenses_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.blue.shade800,
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(height: 12,),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              decoration: BoxDecoration(color: Colors.blue.shade900),
              child: Expenses(),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ExpensesList(),
            ),
          ],
        ),
      ),
    );
  }
}
