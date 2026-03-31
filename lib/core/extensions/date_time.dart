import 'package:zync_gum/router/routes.dart' as router;
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  DateTime get monthStart => DateTime(year, month);

  DateTime get dayStart => DateTime(year, month, day);

  DateTime addMonth(int count) => DateTime(year, month + count, day);

  bool isSameDate(DateTime date) =>
      year == date.year && month == date.month && day == date.day;

  bool get isToday => isSameDate(DateTime.now());

  String getCalendarMonth() =>
      DateFormat('MMMM y', router.localSource.locale).format(this);

  String format() =>
      DateFormat('dd MMMM HH:mm').format(toLocal()).replaceFirst('00:00', '');
}

extension DateTimeExtN on DateTime? {
  bool get isFuture =>
      this != null && (this!).toLocal().isAfter(DateTime.now());
}

extension DurationFormatter on Duration {
  String formatDuration() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    if (inHours > 0) {
      final hours = twoDigits(inHours);
      final minutes = twoDigits(inMinutes.remainder(60));
      final seconds = twoDigits(inSeconds.remainder(60));
      if (hours != '00') {
        return '$hours:$minutes:$seconds';
      }
    }

    final hours = twoDigits(inHours.remainder(60));
    final minutes = twoDigits(inMinutes.remainder(60));
    final seconds = twoDigits(inSeconds.remainder(60));
    if (hours != '00') {
      return '$hours:$minutes:$seconds';
    }
    return '$minutes:$seconds';
  }

  Duration subtract(Duration other) => this - other;
}
