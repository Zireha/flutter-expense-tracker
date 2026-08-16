import 'package:flutter/material.dart';
import 'package:pixelarticons/pixel.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});
  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}
class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: FittedBox(
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {},
          backgroundColor: Colors.blue.shade800,
          child: Icon(
            Pixel.plus,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    );
  }
}