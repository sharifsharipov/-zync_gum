import 'package:flutter_test/flutter_test.dart';
import 'package:zync_gum/core/models/either/either.dart';

void main() {
  group('Either', () {
    group('Left', () {
      test('isLeft returns true', () {
        const either = Left<String, int>('error');
        expect(either.isLeft, isTrue);
        expect(either.isRight, isFalse);
      });

      test('left getter returns value', () {
        const either = Left<String, int>('error');
        expect(either.left, 'error');
      });

      test('right getter throws', () {
        const either = Left<String, int>('error');
        expect(() => either.right, throwsException);
      });

      test('fold applies left function', () {
        const either = Left<String, int>('error');
        final result = either.fold(
          (l) => 'Left: $l',
          (r) => 'Right: $r',
        );
        expect(result, 'Left: error');
      });

      test('map does not transform Left', () {
        const either = Left<String, int>('error');
        final result = either.map((r) => r * 2);
        expect(result.isLeft, isTrue);
        expect(result.left, 'error');
      });
    });

    group('Right', () {
      test('isRight returns true', () {
        const either = Right<String, int>(42);
        expect(either.isRight, isTrue);
        expect(either.isLeft, isFalse);
      });

      test('right getter returns value', () {
        const either = Right<String, int>(42);
        expect(either.right, 42);
      });

      test('left getter throws', () {
        const either = Right<String, int>(42);
        expect(() => either.left, throwsException);
      });

      test('fold applies right function', () {
        const either = Right<String, int>(42);
        final result = either.fold(
          (l) => 'Left: $l',
          (r) => 'Right: $r',
        );
        expect(result, 'Right: 42');
      });

      test('map transforms Right value', () {
        const either = Right<String, int>(42);
        final result = either.map((r) => r * 2);
        expect(result.isRight, isTrue);
        expect(result.right, 84);
      });
    });

    group('swap', () {
      test('swaps Left to Right', () {
        const either = Left<String, int>('error');
        final swapped = either.swap();
        expect(swapped.isRight, isTrue);
        expect(swapped.right, 'error');
      });

      test('swaps Right to Left', () {
        const either = Right<String, int>(42);
        final swapped = either.swap();
        expect(swapped.isLeft, isTrue);
        expect(swapped.left, 42);
      });
    });

    group('tryCatch', () {
      test('returns Right on success', () {
        final result = Either.tryCatch<String, int, Exception>(
          (e) => e.toString(),
          () => 42,
        );
        expect(result.isRight, isTrue);
        expect(result.right, 42);
      });

      test('returns Left on exception', () {
        final result = Either.tryCatch<String, int, FormatException>(
          (e) => e.message,
          () => throw const FormatException('bad'),
        );
        expect(result.isLeft, isTrue);
        expect(result.left, 'bad');
      });
    });

    group('cond', () {
      test('returns Right when condition is true', () {
        final result = Either.cond<String, int>(true, 'error', 42);
        expect(result.isRight, isTrue);
        expect(result.right, 42);
      });

      test('returns Left when condition is false', () {
        final result = Either.cond<String, int>(false, 'error', 42);
        expect(result.isLeft, isTrue);
        expect(result.left, 'error');
      });
    });

    group('equality', () {
      test('two Left with same value are equal', () {
        expect(
          const Left<String, int>('a') == const Left<String, int>('a'),
          isTrue,
        );
      });

      test('two Right with same value are equal', () {
        expect(
          const Right<String, int>(1) == const Right<String, int>(1),
          isTrue,
        );
      });

      test('Left and Right are not equal', () {
        expect(
          // ignore: unrelated_type_equality_checks
          const Left<int, int>(1) == const Right<int, int>(1),
          isFalse,
        );
      });
    });
  });
}
