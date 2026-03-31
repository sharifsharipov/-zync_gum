enum UserRole {
  admin,
  manager,
  user;

  static UserRole fromString(String? role) => switch (role) {
        'admin' => UserRole.admin,
        'manager' => UserRole.manager,
        _ => UserRole.user,
      };

  bool get isAdmin => this == UserRole.admin;
  bool get isManager => this == UserRole.manager;
  bool get isUser => this == UserRole.user;

  bool get canManageUsers => isAdmin;
  bool get canViewReports => isAdmin || isManager;
}
