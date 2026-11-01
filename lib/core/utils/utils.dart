import 'package:intl/intl.dart';

class Utils {
  static const List<String> _month = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec",
  ];

  String timeFormatter(DateTime date) {
    final format = DateFormat("MMM dd, yyyy");
    final formatted = format.format(date);
    return formatted;
  }

  List<String> get month => _month;
}
