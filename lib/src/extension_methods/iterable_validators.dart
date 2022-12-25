import 'package:dartz/dartz.dart';

import '/src/failures/iterable_failure.dart';
import '/src/fp_validators/iterable_validators.dart' as fp_validators;
import '/src/validators/iterable_validators.dart' as validators;

extension IterableValidators on Iterable {
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

  bool get isEmpty {
    return validators.isEmpty(this);
  }

  bool get isNotEmpty {
    return validators.isNotEmpty(this);
  }

  bool isEqualsTo(Iterable comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  bool isLessThan(int maxLength) {
    return validators.isLessThan(this, maxLength);
  }

  bool isLessThanOrEqual(int maxLength) {
    return validators.isLessThanOrEqual(this, maxLength);
  }

  bool isGreaterThan(int minLength) {
    return validators.isGreaterThan(this, minLength);
  }

  bool isGreaterThanOrEqual(int minLength) {
    return validators.isGreaterThanOrEqual(this, minLength);
  }

  bool isBetween(int minLength, int maxLength) {
    return validators.isBetween(this, minLength, maxLength);
  }

  Either<IterableFailure, Iterable?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  Either<IterableFailure, Iterable?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  Either<IterableFailure, Iterable?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  Either<IterableFailure, Iterable?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  Either<IterableFailure, Iterable> get fpIsEmpty {
    return fp_validators.fpIsEmpty(this);
  }

  Either<IterableFailure, Iterable> get fpIsNotEmpty {
    return fp_validators.fpIsNotEmpty(this);
  }

  Either<IterableFailure, Iterable> fpIsEqualsTo(Iterable comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  Either<IterableFailure, Iterable> fpIsLessThan(int maxLength) {
    return fp_validators.fpIsLessThan(this, maxLength);
  }

  Either<IterableFailure, Iterable> fpIsLessThanOrEqual(int maxLength) {
    return fp_validators.fpIsLessThanOrEqual(this, maxLength);
  }

  Either<IterableFailure, Iterable> fpIsGreaterThan(int minLength) {
    return fp_validators.fpIsGreaterThan(this, minLength);
  }

  Either<IterableFailure, Iterable> fpIsGreaterThanOrEqual(int minLength) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minLength);
  }

  Either<IterableFailure, Iterable> fpIsBetween(int minLength, int maxLength) {
    return fp_validators.fpIsBetween(this, minLength, maxLength);
  }
}
