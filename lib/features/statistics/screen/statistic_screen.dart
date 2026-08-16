import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade700
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}