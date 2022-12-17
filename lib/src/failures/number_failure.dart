import 'package:freezed_annotation/freezed_annotation.dart';

part 'number_failure.freezed.dart';

@freezed
class NumberFailure with _$NumberFailure {
  const factory NumberFailure.invalidNumber(Object failedValue) = InvalidNumber;

  const factory NumberFailure.nullable(num? failedValue) = Nullable;

  const factory NumberFailure.notNullable(num? failedValue) = NotNullable;

  const factory NumberFailure.notTruthy(num? failedValue) = NotTruthy;

  const factory NumberFailure.notFalsy(num? failedValue) = NotFalsy;

  const factory NumberFailure.notPositive(num failedValue) = NotPositive;

  const factory NumberFailure.notNegative(num failedValue) = NotNegative;

  const factory NumberFailure.notEqualsTo(num failedValue, Object comparison) = NotEqualsTo;

  const factory NumberFailure.notInList(num failedValue, Iterable values) = NotInList;

  const factory NumberFailure.tooBig(num failedValue, num minValue) = TooBig;

  const factory NumberFailure.tooSmall(num failedValue, num maxValue) = TooSmall;

  const factory NumberFailure.notDivisibleBy(num failedValue, num divider) = NotDivisibleBy;

  const factory NumberFailure.notPrimary(num failedValue) = NotPrimary;
}
