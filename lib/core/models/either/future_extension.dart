import 'dart:async';

import './either.dart';

extension FutureEither<L, R> on Future<Either<L, R>> {
  Future<bool> get isLeft => then((either) => either.isLeft);

  Future<bool> get isRight => then((either) => either.isRight);

  Future<Either<TL, TR>> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  ) => then((either) => either.either(fnL, fnR));

  Future<Either<L, TR>> mapRight<TR>(FutureOr<TR> Function(R right) fnR) =>
      then((either) => either.mapAsync(fnR));

  Future<Either<TL, R>> mapLeft<TL>(FutureOr<TL> Function(L left) fnL) =>
      then((either) => either.mapLeftAsync(fnL));

  Future<Either<L, TR>> thenRight<TR>(
    FutureOr<Either<L, TR>> Function(R right) fnR,
  ) => then((either) => either.thenAsync(fnR));

  Future<Either<TL, R>> thenLeft<TL>(
    FutureOr<Either<TL, R>> Function(L left) fnL,
  ) => then((either) => either.thenLeftAsync(fnL));

  Future<T> fold<T>(
    FutureOr<T> Function(L left) fnL,
    FutureOr<T> Function(R right) fnR,
  ) => then((either) => either.fold(fnL, fnR));

  Future<Either<R, L>> swap() =>
      fold<Either<R, L>>((left) => Right(left), (right) => Left(right));
}
