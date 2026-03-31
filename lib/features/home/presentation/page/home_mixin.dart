import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';
import 'package:zync_gum/core/di/injection.dart';
import 'package:zync_gum/core/utils/firebase_seeder.dart';
import 'package:zync_gum/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:zync_gum/features/home/presentation/bloc/home_bloc.dart';
import 'package:zync_gum/features/home/presentation/page/home_page.dart';

mixin HomeMixin on State<HomePage> {
  late final StreamSubscription<AuthState> _authSub;
  bool seeding = false;

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

  Future<void> seedData() async {
    if (seeding) return;
    setState(() => seeding = true);

    try {
      final seeder = FirebaseSeeder(
        firestore: sl<FirebaseFirestore>(),
        auth: sl<FirebaseAuth>(),
        talker: sl<Talker>(),
      );
      await seeder.seedAll();

      if (!mounted) return;
      context.read<HomeBloc>().add(const HomeEvent.refreshRequested());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Data seeded successfully!')),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Seed failed: $e')),
      );
    } finally {
      if (mounted) setState(() => seeding = false);
    }
  }

  @override
  void dispose() {
    _authSub.cancel();
    super.dispose();
  }
}
