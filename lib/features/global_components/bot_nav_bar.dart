import 'package:expense_tracker/features/shell/provider/navbar_provider.dart';
import 'package:expense_tracker/themes/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixelarticons/pixel.dart';

class BotNavBar extends ConsumerWidget {
  const BotNavBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);

    return Theme(
      data: ThemeData(splashFactory: NoSplash.splashFactory),
      child: BottomNavigationBarTheme(
        data: BottomNavigationBarThemeData(
          selectedLabelStyle: Fonts.buttonText,
          unselectedLabelStyle: Fonts.buttonText,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          unselectedIconTheme: IconThemeData(color: Colors.white54),
          selectedIconTheme: IconThemeData(color: Colors.white),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.blue.shade900,
          currentIndex: indexBottomNavbar,
          onTap: (value) {
            ref
                .read(indexBottomNavbarProvider.notifier)
                .update((state) => value);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Pixel.home, size: 24),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Pixel.chart, size: 24),
              label: "Statistics",
            ),
          ],
        ),
      ),
    );
  }
}
