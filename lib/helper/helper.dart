import 'package:intl/intl.dart';

String todayDayName() {
  return DateFormat('EEEE').format(DateTime.now());
}

String todayDate() {
  return DateFormat('MMM dd, yyyy').format(DateTime.now());
}
