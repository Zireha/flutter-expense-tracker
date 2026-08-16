import 'package:expense_tracker/features/shell/shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Supabase.initialize(
  //   url: Utils().getSupabaseUrl(),

  // );

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Shell(), debugShowCheckedModeBanner: false);
  }
}
