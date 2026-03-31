import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';
import 'package:zync_gum/core/di/injection.dart';
import 'package:zync_gum/core/enums/status.dart';
import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/utils/firebase_seeder.dart';
import 'package:zync_gum/features/home/presentation/bloc/home_bloc.dart';
import 'package:zync_gum/features/home/presentation/page/home_mixin.dart';
import 'package:zync_gum/features/home/presentation/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeMixin {
  bool _seeding = false;

  Future<void> _seedData(BuildContext context) async {
    if (_seeding) return;
    setState(() => _seeding = true);

    try {
      final seeder = FirebaseSeeder(
        firestore: sl<FirebaseFirestore>(),
        auth: sl<FirebaseAuth>(),
        talker: sl<Talker>(),
      );
      await seeder.seedAll();

      if (!mounted) return;
      this.context.read<HomeBloc>().add(const HomeEvent.refreshRequested());
      ScaffoldMessenger.of(this.context).showSnackBar(
        const SnackBar(content: Text('Data seeded successfully!')),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(this.context).showSnackBar(
        SnackBar(content: Text('Seed failed: $e')),
      );
    } finally {
      if (mounted) setState(() => _seeding = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Zync Gum', style: context.textStyle.poppins18w600),
        actions: [
          _seeding
              ? const Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
              : IconButton(
                  onPressed: () => _seedData(context),
                  icon: const Icon(Icons.cloud_upload_outlined),
                  tooltip: 'Seed Data',
                ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == Status.failed) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline,
                      size: 48, color: Colors.red),
                  const SizedBox(height: 12),
                  Text(state.failure.message,
                      style: context.textStyle.manrope14w400),
                  const SizedBox(height: 16),
                  FilledButton.icon(
                    onPressed: () => context
                        .read<HomeBloc>()
                        .add(const HomeEvent.loadRequested()),
                    icon: const Icon(Icons.refresh),
                    label: Text(context.locale.retry),
                  ),
                ],
              ),
            );
          }
          if (state.status == Status.success) {
            return RefreshIndicator(
              onRefresh: () async => context
                  .read<HomeBloc>()
                  .add(const HomeEvent.refreshRequested()),
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(child: UserInfoCard()),


                  if (state.businesses.isNotEmpty) ...[
                    SliverToBoxAdapter(
                      child: SectionTitle(
                        title: context.locale.myBusinesses,
                        trailing: Text(
                          '${state.businesses.length} ta',
                          style: context.textStyle.manrope14w400.copyWith(
                            color: context.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, i) =>
                            BusinessCard(business: state.businesses[i]),
                        childCount: state.businesses.length,
                      ),
                    ),
                  ],

                  if (state.productionLines.isNotEmpty) ...[
                    SliverToBoxAdapter(
                      child: SectionTitle(
                          title: context.locale.productionLines),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, i) =>
                            ProductionCard(line: state.productionLines[i]),
                        childCount: state.productionLines.length,
                      ),
                    ),
                  ],

                  if (state.inventory.isNotEmpty) ...[
                    SliverToBoxAdapter(
                      child: SectionTitle(title: context.locale.warehouseStatus),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, i) =>
                            InventoryCard(item: state.inventory[i]),
                        childCount: state.inventory.length,
                      ),
                    ),
                  ],

                  if (state.businesses.isEmpty &&
                      state.productionLines.isEmpty &&
                      state.inventory.isEmpty)
                    SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.inbox_outlined,
                              size: 64,
                              color: context.colorScheme.onSurface
                                  .withValues(alpha: 0.3),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              context.locale.noData,
                              style: context.textStyle.manrope16w500.copyWith(
                                color: context.colorScheme.onSurface
                                    .withValues(alpha: 0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  const SliverToBoxAdapter(child: SizedBox(height: 24)),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
