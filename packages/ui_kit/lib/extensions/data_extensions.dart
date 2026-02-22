import 'package:intl/intl.dart';

extension DataExtensions on DateTime {
  String toddMMyyyy() {
    return DateFormat('dd.MM.yyyy').format(this);
  }
}
