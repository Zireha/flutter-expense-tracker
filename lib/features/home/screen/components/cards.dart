import 'package:flutter/material.dart';

class Cards extends StatelessWidget {

  final Widget child;
  const Cards({super.key, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white24,
          border: Border(
            right: BorderSide(
              width: 6,
              color: Colors.black
            ),
            bottom: BorderSide(
              width: 6,
              color: Colors.black
            ),
            top: BorderSide(
              width: 2,
              color: Colors.black
            ),
            left: BorderSide(
              width: 2,
              color: Colors.black
            )
          ),
          borderRadius: BorderRadius.circular(8)
        ),
        child: child,
      ),
    );
  }
}
