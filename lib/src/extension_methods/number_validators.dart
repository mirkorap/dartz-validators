import 'package:dartz/dartz.dart';

import '/src/failures/number_failure.dart';
import '/src/fp_validators/number_validators.dart' as fp_validators;
import '/src/validators/number_validators.dart' as validators;

extension NumberValidators on num {
  bool get isNull {
    return validators.isNull(this);
  }

  bool get isNotNull {
    return validators.isNotNull(this);
  }

  bool get isTruthy {
    return validators.isTruthy(this);
  }

  bool get isFalsy {
    return validators.isFalsy(this);
  }

  bool get isPositive {
    return validators.isPositive(this);
  }

  bool get isNegative {
    return validators.isNegative(this);
  }

  bool isEqualsTo(Object comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  bool isInList(Iterable values) {
    return validators.isInList(this, values);
  }

  bool isLessThan(num maxValue) {
    return validators.isLessThan(this, maxValue);
  }

  bool isLessThanOrEqual(num maxValue) {
    return validators.isLessThanOrEqual(this, maxValue);
  }

  bool isGreaterThan(num minValue) {
    return validators.isGreaterThan(this, minValue);
  }

  bool isGreaterThanOrEqual(num minValue) {
    return validators.isGreaterThanOrEqual(this, minValue);
  }

  bool isBetween(num minValue, num maxValue) {
    return validators.isBetween(this, minValue, maxValue);
  }

  bool isDivisibleBy(num divider) {
    return validators.isDivisibleBy(this, divider);
  }

  bool get isEven {
    return validators.isEven(this);
  }

  bool get isOdd {
    return validators.isOdd(this);
  }

  bool get isPrimary {
    return validators.isPrimary(this);
  }

  Either<NumberFailure, num?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  Either<NumberFailure, num?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  Either<NumberFailure, num?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  Either<NumberFailure, num?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  Either<NumberFailure, num> get fpIsPositive {
    return fp_validators.fpIsPositive(this);
  }

  Either<NumberFailure, num> get fpIsNegative {
    return fp_validators.fpIsNegative(this);
  }

  Either<NumberFailure, num> fpIsEqualsTo(Object comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  Either<NumberFailure, num> fpIsInList(Iterable values) {
    return fp_validators.fpIsInList(this, values);
  }

  Either<NumberFailure, num> fpIsLessThan(num maxValue) {
    return fp_validators.fpIsLessThan(this, maxValue);
  }

  Either<NumberFailure, num> fpIsLessThanOrEqual(num maxValue) {
    return fp_validators.fpIsLessThanOrEqual(this, maxValue);
  }

  Either<NumberFailure, num> fpIsGreaterThan(num minValue) {
    return fp_validators.fpIsGreaterThan(this, minValue);
  }

  Either<NumberFailure, num> fpIsGreaterThanOrEqual(num minValue) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minValue);
  }

  Either<NumberFailure, num> fpIsBetween(num minValue, num maxValue) {
    return fp_validators.fpIsBetween(this, minValue, maxValue);
  }

  Either<NumberFailure, num> fpIsDivisibleBy(num divider) {
    return fp_validators.fpIsDivisibleBy(this, divider);
  }

  Either<NumberFailure, num> get fpIsEven {
    return fp_validators.fpIsEven(this);
  }

  Either<NumberFailure, num> get fpIsOdd {
    return fp_validators.fpIsOdd(this);
  }

  Either<NumberFailure, num> get fpIsPrimary {
    return fp_validators.fpIsPrimary(this);
  }
}
