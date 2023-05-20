import 'package:dartz/dartz.dart';

import '/src/failures/number_failure.dart';
import '/src/fp_validators/number_validators.dart' as fp_validators;
import '/src/validators/number_validators.dart' as validators;

extension NumberValidators on num {
  /// Check if the number is null
  bool get isNull {
    return validators.isNull(this);
  }

  /// Check if the number is not null
  bool get isNotNull {
    return validators.isNotNull(this);
  }

  /// Check if the number is truthy
  /// The values null or 0 are considerate falsy
  bool get isTruthy {
    return validators.isTruthy(this);
  }

  /// Check if the number is falsy
  /// The values null or 0 are considerate falsy
  bool get isFalsy {
    return validators.isFalsy(this);
  }

  /// Check if the number is greater or equal than zero
  bool get isPositive {
    return validators.isPositive(this);
  }

  /// Check if the number is less than zero
  bool get isNegative {
    return validators.isNegative(this);
  }

  /// Check if the number is equals to another
  bool isEqualsTo(Object comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  /// Check if the number is list of values
  bool isInList(Iterable values) {
    return validators.isInList(this, values);
  }

  /// Check if the number is less than [maxValue]
  bool isLessThan(num maxValue) {
    return validators.isLessThan(this, maxValue);
  }

  /// Check if the number is less or equal than [maxValue]
  bool isLessThanOrEqual(num maxValue) {
    return validators.isLessThanOrEqual(this, maxValue);
  }

  /// Check if the number is greater than [minValue]
  bool isGreaterThan(num minValue) {
    return validators.isGreaterThan(this, minValue);
  }

  /// Check if the number is greater or equal than [minValue]
  bool isGreaterThanOrEqual(num minValue) {
    return validators.isGreaterThanOrEqual(this, minValue);
  }

  /// Check if the number is between [minValue] and [maxValue]
  bool isBetween(num minValue, num maxValue) {
    return validators.isBetween(this, minValue, maxValue);
  }

  /// Check if the number is divisible by [divider]
  bool isDivisibleBy(num divider) {
    return validators.isDivisibleBy(this, divider);
  }

  /// Check if the number is even
  bool get isEven {
    return validators.isEven(this);
  }

  /// Check if the number is odd
  bool get isOdd {
    return validators.isOdd(this);
  }

  /// Check if the number is primary
  bool get isPrimary {
    return validators.isPrimary(this);
  }

  /// Check if the number is null
  Either<NumberFailure, num?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  /// Check if the number is not null
  Either<NumberFailure, num?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  /// Check if the number is truthy
  /// The values null or 0 are considerate falsy
  Either<NumberFailure, num?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  /// Check if the number is falsy
  /// The values null or 0 are considerate falsy
  Either<NumberFailure, num?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  /// Check if the number is greater or equal than zero
  Either<NumberFailure, num> get fpIsPositive {
    return fp_validators.fpIsPositive(this);
  }

  /// Check if the number is less than zero
  Either<NumberFailure, num> get fpIsNegative {
    return fp_validators.fpIsNegative(this);
  }

  /// Check if the number is equals to another
  Either<NumberFailure, num> fpIsEqualsTo(Object comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  /// Check if the number is list of values
  Either<NumberFailure, num> fpIsInList(Iterable values) {
    return fp_validators.fpIsInList(this, values);
  }

  /// Check if the number is less than [maxValue]
  Either<NumberFailure, num> fpIsLessThan(num maxValue) {
    return fp_validators.fpIsLessThan(this, maxValue);
  }

  /// Check if the number is less or equal than [maxValue]
  Either<NumberFailure, num> fpIsLessThanOrEqual(num maxValue) {
    return fp_validators.fpIsLessThanOrEqual(this, maxValue);
  }

  /// Check if the number is greater than [minValue]
  Either<NumberFailure, num> fpIsGreaterThan(num minValue) {
    return fp_validators.fpIsGreaterThan(this, minValue);
  }

  /// Check if the number is greater or equal than [minValue]
  Either<NumberFailure, num> fpIsGreaterThanOrEqual(num minValue) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minValue);
  }

  /// Check if the number is between [minValue] and [maxValue]
  Either<NumberFailure, num> fpIsBetween(num minValue, num maxValue) {
    return fp_validators.fpIsBetween(this, minValue, maxValue);
  }

  /// Check if the number is divisible by [divider]
  Either<NumberFailure, num> fpIsDivisibleBy(num divider) {
    return fp_validators.fpIsDivisibleBy(this, divider);
  }

  /// Check if the number is even
  Either<NumberFailure, num> get fpIsEven {
    return fp_validators.fpIsEven(this);
  }

  /// Check if the number is odd
  Either<NumberFailure, num> get fpIsOdd {
    return fp_validators.fpIsOdd(this);
  }

  /// Check if the number is primary
  Either<NumberFailure, num> get fpIsPrimary {
    return fp_validators.fpIsPrimary(this);
  }
}
