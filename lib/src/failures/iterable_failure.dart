import 'package:freezed_annotation/freezed_annotation.dart';

part 'iterable_failure.freezed.dart';

@freezed
class IterableFailure with _$IterableFailure {
  const factory IterableFailure.invalidIterable(Object? failedValue) = InvalidIterable;

  const factory IterableFailure.nullable(Iterable? failedValue) = Nullable;

  const factory IterableFailure.notNullable(Iterable? failedValue) = NotNullable;

  const factory IterableFailure.notTruthy(Iterable? failedValue) = NotTruthy;

  const factory IterableFailure.notFalsy(Iterable? failedValue) = NotFalsy;

  const factory IterableFailure.empty(Iterable failedValue) = Empty;

  const factory IterableFailure.notEmpty(Iterable failedValue) = NotEmpty;

  const factory IterableFailure.notEqualsTo(Iterable failedValue, Iterable comparison) = NotEqualsTo;

  const factory IterableFailure.exceedingLength(Iterable failedValue, int maxLength) = ExceedingLength;

  const factory IterableFailure.tooShortLength(Iterable failedValue, int minLength) = TooShortLength;
}
