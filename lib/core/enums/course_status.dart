enum CourseStatus {
  onGoing,
  notStarted,
  notJoined;

  String get slug {
    switch (this) {
      case CourseStatus.onGoing:
        return 'ONGOING';
      case CourseStatus.notStarted:
        return 'NOT_STARTED';
      case CourseStatus.notJoined:
        return 'NOT_JOINED';
    }
  }

  bool get isOngoing => this == CourseStatus.onGoing;

  bool get isNotStarted => this == CourseStatus.notStarted;

  bool get isNotJoined => this == CourseStatus.notJoined;
}
