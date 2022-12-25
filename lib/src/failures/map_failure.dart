import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_failure.freezed.dart';

@freezed
class MapFailure with _$MapFailure {
  const factory MapFailure.invalidMap(Object? failedValue) = InvalidMap;

  const factory MapFailure.nullable(Map? failedValue) = Nullable;

  const factory MapFailure.notNullable(Map? failedValue) = NotNullable;

  const factory MapFailure.notTruthy(Map? failedValue) = NotTruthy;

  const factory MapFailure.notFalsy(Map? failedValue) = NotFalsy;

  const factory MapFailure.empty(Map failedValue) = Empty;

  const factory MapFailure.notEmpty(Map failedValue) = NotEmpty;

  const factory MapFailure.notEqualsTo(Map failedValue, Map comparison) = NotEqualsTo;

  const factory MapFailure.exceedingLength(Map failedValue, int maxLength) = ExceedingLength;

  const factory MapFailure.tooShortLength(Map failedValue, int minLength) = TooShortLength;
}
