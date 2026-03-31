part of 'utils.dart';

class Unit {
  const Unit();

  @override
  bool operator ==(Object other) => other is Unit;

  @override
  int get hashCode => 0;

  @override
  String toString() => 'Unit';
}

const unit = Unit();
typedef ResultData<T> = FutureOr<Either<Failure, T>>;
typedef ResultUnit = FutureOr<Either<Failure, Unit>>;
typedef DataMap = Map<String, dynamic>;
typedef SuccessCallBack = FutureOr<bool> Function();
