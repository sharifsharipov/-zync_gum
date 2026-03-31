extension ListExtensions on List? {
  bool isNullOrEmpty() => this == null || this?.isEmpty == true;
}

extension TryGetExtension<T> on List<T?>? {
  T? tryGet(int index) {
    final length = this?.length ?? 0;
    if (index < length) {
      return this?[index];
    }
    return null;
  }
}
