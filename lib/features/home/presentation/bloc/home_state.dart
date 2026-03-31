part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.pure) Status status,
    @Default([]) List<ProductionLineEntity> productionLines,
    @Default([]) List<InventoryEntity> inventory,
    @Default([]) List<BusinessEntity> businesses,
    @Default(UnknownFailure()) Failure failure,
  }) = _HomeState;

}
