import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zync_gum/core/enums/status.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:zync_gum/features/home/domain/usecases/get_businesses_usecase/get_businesses_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_inventory_usecase/get_inventory_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_production_lines_usecase/get_production_lines_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.getProductionLines,
    required this.getInventory,
    required this.getBusinesses,
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth,
       super(const HomeState()) {
    on<HomeLoadRequested>(_onLoad);
    on<HomeRefreshRequested>(_onRefresh);
  }

  final GetProductionLinesUsecase getProductionLines;
  final GetInventoryUsecase getInventory;
  final GetBusinessesUsecase getBusinesses;
  final FirebaseAuth _firebaseAuth;

  Future<void> _onLoad(HomeLoadRequested event, Emitter<HomeState> emit) =>
      _fetch(emit);

  Future<void> _onRefresh(
    HomeRefreshRequested event,
    Emitter<HomeState> emit,
  ) => _fetch(emit);

  Future<void> _fetch(Emitter<HomeState> emit) async {
    emit(state.copyWith(status: Status.loading));

    final userId = _firebaseAuth.currentUser?.uid ?? '';

    final linesResult = await getProductionLines().first;
    linesResult.fold(
      (failure) => emit(state.copyWith(status: Status.failed, failure: failure)),
      (lines) => emit(state.copyWith(productionLines: lines)),
    );
    if (state.status == Status.failed) return;

    final inventoryResult = await getInventory().first;
    inventoryResult.fold(
      (failure) => emit(state.copyWith(status: Status.failed, failure: failure)),
      (items) => emit(state.copyWith(inventory: items)),
    );
    if (state.status == Status.failed) return;

    if (userId.isNotEmpty) {
      final bizResult = await getBusinesses(
        GetBusinessesParams(userId: userId),
      ).first;
      bizResult.fold(
        (_) {},
        (items) => emit(state.copyWith(businesses: items)),
      );
    }

    emit(state.copyWith(status: Status.success));
  }
}
