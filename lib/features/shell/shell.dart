import 'package:expense_tracker/features/global_components/bot_nav_bar.dart';
import 'package:expense_tracker/features/global_components/floating_button.dart';
import 'package:expense_tracker/features/home/screen/home_screen.dart';
import 'package:expense_tracker/features/shell/provider/navbar_provider.dart';
import 'package:expense_tracker/features/statistics/screen/statistic_screen.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Shell extends ConsumerWidget {
  const Shell({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);

    final screens = [HomeScreen(), StatisticScreen()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: indexBottomNavbar == 0
            ? Text(
                "Home",
                style: Fonts.primaryHeaderBold.copyWith(color: Colors.white),
              )
            : Text(
                "Statistic",
                style: Fonts.primaryHeaderBold.copyWith(color: Colors.white),
              ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingButton(),
      bottomNavigationBar: BotNavBar(),
      backgroundColor: Colors.blue.shade700,
      body: screens[indexBottomNavbar],
    );
  }
}
