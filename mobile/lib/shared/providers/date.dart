import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final dateFormatProvider = Provider((ref) {
  final format = DateFormat.yMd();
  return format.format;
});
