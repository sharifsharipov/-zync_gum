import 'dart:async';

typedef Lazy<T> = T Function();

sealed class Either<L, R> {
  const Either();

  bool get isLeft => this is Left<L, R>;

  bool get isRight => this is Right<L, R>;

  L get left => fold<L>(
    (value) => value,
    (right) =>
        throw Exception('Illegal use. You should check isLeft before calling'),
  );

  R get right => fold<R>(
    (left) =>
        throw Exception('Illegal use. You should check isRight before calling'),
    (value) => value,
  );

  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  );

  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR);

  Future<Either<L, TR>> thenAsync<TR>(
    FutureOr<Either<L, TR>> Function(R right) fnR,
  );

  Either<TL, R> thenLeft<TL>(Either<TL, R> Function(L left) fnL);

  Future<Either<TL, R>> thenLeftAsync<TL>(
    FutureOr<Either<TL, R>> Function(L left) fnL,
  );

  Either<L, TR> map<TR>(TR Function(R right) fnR);

  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL);

  Future<Either<L, TR>> mapAsync<TR>(FutureOr<TR> Function(R right) fnR);

  Future<Either<TL, R>> mapLeftAsync<TL>(FutureOr<TL> Function(L left) fnL);

  T fold<T>(T Function(L left) fnL, T Function(R right) fnR);

  Either<R, L> swap() => fold((left) => Right(left), (right) => Left(right));

  static Either<L, R> tryCatch<L, R, Err extends Object>(
    L Function(Err err) onError,
    R Function() fnR,
  ) {
    try {
      return Right(fnR());
    } on Err catch (e) {
      return Left(onError(e));
    }
  }

  static Either<Err, R> tryExcept<Err extends Object, R>(R Function() fnR) {
    try {
      return Right(fnR());
    } on Err catch (e) {
      return Left(e);
    }
  }

  static Either<L, R> cond<L, R>(bool test, L leftValue, R rightValue) =>
      test ? Right(rightValue) : Left(leftValue);

  static Either<L, R> condLazy<L, R>(
    bool test,
    Lazy<L> leftValue,
    Lazy<R> rightValue,
  ) => test ? Right(rightValue()) : Left(leftValue());

  @override
  bool operator ==(Object obj) => fold(
    (left) => obj is Left && left == obj.value,
    (right) => obj is Right && right == obj.value,
  );

  @override
  int get hashCode => fold((left) => left.hashCode, (right) => right.hashCode);
}

class Left<L, R> extends Either<L, R> {
  const Left(this.value);

  final L value;

  @override
  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  ) => Left<TL, TR>(fnL(value));

  @override
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR) =>
      Left<L, TR>(value);

  @override
  Future<Either<L, TR>> thenAsync<TR>(
    FutureOr<Either<L, TR>> Function(R right) fnR,
  ) => Future.value(Left<L, TR>(value));

  @override
  Either<TL, R> thenLeft<TL>(Either<TL, R> Function(L left) fnL) => fnL(value);

  @override
  Future<Either<TL, R>> thenLeftAsync<TL>(
    FutureOr<Either<TL, R>> Function(L left) fnL,
  ) => Future.value(fnL(value));

  @override
  Either<L, TR> map<TR>(TR Function(R right) fnR) => Left<L, TR>(value);

  @override
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL) => Left<TL, R>(fnL(value));

  @override
  Future<Either<L, TR>> mapAsync<TR>(FutureOr<TR> Function(R right) fnR) =>
      Future.value(Left<L, TR>(value));

  @override
  Future<Either<TL, R>> mapLeftAsync<TL>(FutureOr<TL> Function(L left) fnL) =>
      Future.value(fnL(value)).then((value) => Left<TL, R>(value));

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) => fnL(value);
}

class Right<L, R> extends Either<L, R> {
  const Right(this.value);

  final R value;

  @override
  Either<TL, TR> either<TL, TR>(
    TL Function(L left) fnL,
    TR Function(R right) fnR,
  ) => Right<TL, TR>(fnR(value));

  @override
  Either<L, TR> then<TR>(Either<L, TR> Function(R right) fnR) => fnR(value);

  @override
  Future<Either<L, TR>> thenAsync<TR>(
    FutureOr<Either<L, TR>> Function(R right) fnR,
  ) => Future.value(fnR(value));

  @override
  Either<TL, R> thenLeft<TL>(Either<TL, R> Function(L left) fnL) =>
      Right<TL, R>(value);

  @override
  Future<Either<TL, R>> thenLeftAsync<TL>(
    FutureOr<Either<TL, R>> Function(L left) fnL,
  ) => Future.value(Right<TL, R>(value));

  @override
  Either<L, TR> map<TR>(TR Function(R right) fnR) => Right<L, TR>(fnR(value));

  @override
  Either<TL, R> mapLeft<TL>(TL Function(L left) fnL) => Right<TL, R>(value);

  @override
  Future<Either<L, TR>> mapAsync<TR>(FutureOr<TR> Function(R right) fnR) =>
      Future.value(fnR(value)).then((value) => Right<L, TR>(value));

  @override
  Future<Either<TL, R>> mapLeftAsync<TL>(FutureOr<TL> Function(L left) fnL) =>
      Future.value(Right<TL, R>(value));

  @override
  T fold<T>(T Function(L left) fnL, T Function(R right) fnR) => fnR(value);
}
