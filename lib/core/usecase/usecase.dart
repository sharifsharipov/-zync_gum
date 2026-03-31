// ignore_for_file: avoid_types_as_parameter_names
import 'package:zync_gum/core/errors/failure.dart';
import 'package:zync_gum/core/models/either/either.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Class to handle when useCase don't need params
class NoParams {}