import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';
import 'package:zync_gum/features/home/data/data_source/home_data_source.dart';
import 'package:zync_gum/features/home/data/models/business_response/business_response.dart';
import 'package:zync_gum/features/home/data/models/inventory_response/inventory_response.dart';
import 'package:zync_gum/features/home/data/models/production_line_response/production_line_response.dart';

@LazySingleton(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  HomeDataSourceImpl({
    required FirebaseFirestore firestore,
    required Talker talker,
  })  : _firestore = firestore,
        _talker = talker;

  final FirebaseFirestore _firestore;
  final Talker _talker;

  @override
  Stream<Either<Failure, List<ProductionLineResponse>>> watchProductionLines() async* {
    try {
      await for (final snap in _firestore.collection('production_lines').snapshots()) {
        final models = snap.docs.map((doc) => ProductionLineResponse.fromJson(
              {'id': doc.id, ...doc.data()},
            )).toList();
        yield Right(models);
      }
    } catch (e, s) {
      _talker.handle(e, s, 'watchProductionLines');
      yield Left(ServerFailure(message: e.toString(), statusCode: 0));
    }
  }

  @override
  Stream<Either<Failure, List<InventoryResponse>>> watchInventory() async* {
    try {
      await for (final snap in _firestore.collection('inventory').snapshots()) {
        final models = snap.docs.map((doc) => InventoryResponse.fromJson(
              {'id': doc.id, ...doc.data()},
            )).toList();
        yield Right(models);
      }
    } catch (e, s) {
      _talker.handle(e, s, 'watchInventory');
      yield Left(ServerFailure(message: e.toString(), statusCode: 0));
    }
  }

  @override
  Stream<Either<Failure, List<BusinessResponse>>> watchBusinesses(String userId) async* {
    try {
      await for (final snap in _firestore
          .collection('businesses')
          .where('userId', isEqualTo: userId)
          .snapshots()) {
        final models = snap.docs.map((doc) => BusinessResponse.fromJson(
              {'id': doc.id, ...doc.data()},
            )).toList();
        yield Right(models);
      }
    } catch (e, s) {
      _talker.handle(e, s, 'watchBusinesses');
      yield Left(ServerFailure(message: e.toString(), statusCode: 0));
    }
  }
}
