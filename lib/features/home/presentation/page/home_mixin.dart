import 'dart:async';

import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/home/presentation/bloc/home_bloc.dart';
import 'package:zync_gum/features/home/presentation/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin HomeMixin on State<HomePage> {
  late final StreamSubscription<AuthState> _authSub;

  @override
  void initState() {
    super.initState();
    final authBloc = context.read<AuthBloc>();

    if (authBloc.state.isAuthenticated) {
      context.read<HomeBloc>().add(const HomeEvent.loadRequested());
    }

    _authSub = authBloc.stream
        .where((state) => state.isAuthenticated)
        .distinct((prev, curr) => prev.user == curr.user)
        .listen((_) {
      if (mounted) {
        context.read<HomeBloc>().add(const HomeEvent.loadRequested());
      }
    });
  }

  @override
  void dispose() {
    _authSub.cancel();
    super.dispose();
  }
}
