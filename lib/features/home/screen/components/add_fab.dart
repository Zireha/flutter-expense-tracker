import 'package:expense_tracker/features/home/screen/components/add_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AddFab extends StatelessWidget {
  const AddFab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xff615B77),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              blurRadius: 0,
              blurStyle: BlurStyle.solid,
              offset: Offset(2, 2),
              color: Colors.white,
            ),
          ],
        ),
        child: IconButton(
          onPressed: () => showModalBottomSheet(
            context: context,
            backgroundColor: Color(0xff332F42),
            builder: (BuildContext sheetContext) {
              return AddBottomSheet();
            },
          ),
          icon: Icon(Icons.add, color: Colors.white, size: 36),
        ),
      ),
    );
  }
}
