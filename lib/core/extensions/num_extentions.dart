extension NumExtention on num {
  String asThousands({bool forBalance = false}) {
    const separator = ' ';
    const digits = 3;
    final chars = abs().truncate().toString().split('').reversed;
    var n = 0;
    var result = '';
    for (final ch in chars) {
      if (n == digits) {
        result = '$ch$separator$result';
        n = 1;
      } else {
        result = '$ch$result';
        n++;
      }
    }
    result = this < 0
        ? '-$result'
        : this == 0
            ? result
            : '${forBalance ? '+' : ''}$result';
    result = (this is double) ? '$result${toStringAsFixed(2).substring(toString().lastIndexOf('.'))}' : result;
    return result;
  }
}
