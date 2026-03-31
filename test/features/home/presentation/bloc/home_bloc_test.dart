import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zync_gum/core/enums/status.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/domain/entities/business_entity/business_entity.dart';
import 'package:zync_gum/features/home/domain/entities/inventory_entity/inventory_entity.dart';
import 'package:zync_gum/features/home/domain/entities/production_line_entity/production_line_entity.dart';
import 'package:zync_gum/features/home/domain/usecases/get_businesses_usecase/get_businesses_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_inventory_usecase/get_inventory_usecase.dart';
import 'package:zync_gum/features/home/domain/usecases/get_production_lines_usecase/get_production_lines_usecase.dart';
import 'package:zync_gum/features/home/presentation/bloc/home_bloc.dart';

@GenerateMocks([
  GetProductionLinesUsecase,
  GetInventoryUsecase,
  GetBusinessesUsecase,
  FirebaseAuth,
  User,
])
import 'home_bloc_test.mocks.dart';

void main() {
  late HomeBloc bloc;
  late MockGetProductionLinesUsecase mockGetProductionLines;
  late MockGetInventoryUsecase mockGetInventory;
  late MockGetBusinessesUsecase mockGetBusinesses;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUser mockUser;

  final tProductionLines = [
    const ProductionLineEntity(
      id: '1',
      flavor: 'Mint',
      status: 'running',
      progressPercent: 75.0,
      temperature: 36.5,
      dailyTarget: 1000,
      produced: 750,
    ),
  ];

  final tInventory = [
    const InventoryEntity(
      id: '1',
      materialName: 'Sugar',
      quantity: 500.0,
      unit: 'kg',
      minLevel: 100.0,
    ),
  ];

  final tBusinesses = [
    const BusinessEntity(
      id: 'b1',
      name: 'Zync Factory',
      type: 'manufacturing',
    ),
  ];

  setUp(() {
    mockGetProductionLines = MockGetProductionLinesUsecase();
    mockGetInventory = MockGetInventoryUsecase();
    mockGetBusinesses = MockGetBusinessesUsecase();
    mockFirebaseAuth = MockFirebaseAuth();
    mockUser = MockUser();
  });

  HomeBloc createBloc() => HomeBloc(
        getProductionLines: mockGetProductionLines,
        getInventory: mockGetInventory,
        getBusinesses: mockGetBusinesses,
        firebaseAuth: mockFirebaseAuth,
      );

  tearDown(() => bloc.close());

  test('initial state is correct', () {
    bloc = createBloc();
    expect(bloc.state.status, Status.pure);
    expect(bloc.state.productionLines, isEmpty);
    expect(bloc.state.inventory, isEmpty);
    expect(bloc.state.businesses, isEmpty);
  });

  group('HomeLoadRequested', () {
    test('emits loading then success with all data', () async {
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.uid).thenReturn('uid1');
      when(mockGetProductionLines())
          .thenAnswer((_) => Stream.value(Right(tProductionLines)));
      when(mockGetInventory())
          .thenAnswer((_) => Stream.value(Right(tInventory)));
      when(mockGetBusinesses(any))
          .thenAnswer((_) => Stream.value(Right(tBusinesses)));

      bloc = createBloc();
      bloc.add(const HomeEvent.loadRequested());

      await expectLater(
        bloc.stream,
        emitsThrough(
          isA<HomeState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.productionLines, 'lines', tProductionLines)
              .having((s) => s.inventory, 'inventory', tInventory),
        ),
      );
    });

    test('emits failed when production lines fail', () async {
      when(mockFirebaseAuth.currentUser).thenReturn(null);
      const failure = ServerFailure(message: 'Firestore error', statusCode: 0);
      when(mockGetProductionLines())
          .thenAnswer((_) => Stream.value(const Left(failure)));

      bloc = createBloc();
      bloc.add(const HomeEvent.loadRequested());

      await expectLater(
        bloc.stream,
        emitsThrough(
          isA<HomeState>()
              .having((s) => s.status, 'status', Status.failed),
        ),
      );
    });

    test('loads without businesses when user is null', () async {
      when(mockFirebaseAuth.currentUser).thenReturn(null);
      when(mockGetProductionLines())
          .thenAnswer((_) => Stream.value(Right(tProductionLines)));
      when(mockGetInventory())
          .thenAnswer((_) => Stream.value(Right(tInventory)));

      bloc = createBloc();
      bloc.add(const HomeEvent.loadRequested());

      await expectLater(
        bloc.stream,
        emitsThrough(
          isA<HomeState>()
              .having((s) => s.status, 'status', Status.success)
              .having((s) => s.businesses, 'businesses', isEmpty),
        ),
      );

      verifyNever(mockGetBusinesses(any));
    });
  });

  group('HomeRefreshRequested', () {
    test('emits loading then success', () async {
      when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
      when(mockUser.uid).thenReturn('uid1');
      when(mockGetProductionLines())
          .thenAnswer((_) => Stream.value(Right(tProductionLines)));
      when(mockGetInventory())
          .thenAnswer((_) => Stream.value(Right(tInventory)));
      when(mockGetBusinesses(any))
          .thenAnswer((_) => Stream.value(Right(tBusinesses)));

      bloc = createBloc();
      bloc.add(const HomeEvent.refreshRequested());

      await expectLater(
        bloc.stream,
        emitsThrough(
          isA<HomeState>()
              .having((s) => s.status, 'status', Status.success),
        ),
      );
    });
  });
}
