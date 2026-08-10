import 'package:expense_tracker/features/home/screen/components/cards.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text("Dashboard", style: Fonts.primaryHeaderBold.copyWith(
          color: Colors.white
        ),),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue.shade700,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Cards()
        ],
      ),
    );
  }
}