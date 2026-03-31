enum Status { pure, success, loading, failed }

extension StatusExtension on Status? {
  bool get isPure => this == Status.pure;

  bool get isLoading => this == Status.loading;

  bool get isSuccess => this == Status.success;

  bool get isFailed => this == Status.failed;
}
