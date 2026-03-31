enum AccessStatus {
  pending,
  onGoing,
  completed;

  static AccessStatus? fromString(String? status) {
    switch (status) {
      case 'PENDING':
        return AccessStatus.pending;
      case 'ONGOING':
        return AccessStatus.onGoing;
      case 'COMPLETED':
        return AccessStatus.completed;
      default:
        return null;
    }
  }

  bool get isPending => this == AccessStatus.pending;

  bool get isOnGoing => this == AccessStatus.onGoing;

  bool get isCompleted => this == AccessStatus.completed;
}
