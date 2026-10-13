import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Widget child;
  const Cards({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff332F42),
        border: Border.all(color: Colors.white, width: 2),
        boxShadow: [
          BoxShadow(
            blurRadius: 0,
            blurStyle: BlurStyle.solid,
            offset: Offset(4, 4),
            color: Colors.white,
          ),
        ],
      ),
      child: child,
    );
  }
}
