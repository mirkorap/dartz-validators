import 'package:dartz/dartz.dart';

import '/src/failures/iterable_failure.dart';
import '/src/fp_validators/iterable_validators.dart' as fp_validators;
import '/src/validators/iterable_validators.dart' as validators;

extension IterableValidators on Iterable {
  /// Check if the iterable is null
  bool get isNull {
    return validators.isNull(this);
  }

  /// Check if the iterable is not null
  bool get isNotNull {
    return validators.isNotNull(this);
  }

  /// Check if the iterable is truthy
  /// The values null or empty list are considered falsy
  bool get isTruthy {
    return validators.isTruthy(this);
  }

  /// Check if the iterable is falsy
  /// The values null or empty list are considered falsy
  bool get isFalsy {
    return validators.isFalsy(this);
  }

  /// Check if the iterable is empty
  bool get isEmpty {
    return validators.isEmpty(this);
  }

  /// Check if the iterable is not empty
  bool get isNotEmpty {
    return validators.isNotEmpty(this);
  }

  /// Check if the iterable is equals to another list
  bool isEqualsTo(Iterable comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  /// Check if the iterable length is less than [maxLength]
  bool isLessThan(int maxLength) {
    return validators.isLessThan(this, maxLength);
  }

  /// Check if the iterable length is less or equal than [maxLength]
  bool isLessThanOrEqual(int maxLength) {
    return validators.isLessThanOrEqual(this, maxLength);
  }

  /// Check if the iterable length is greater than [minLength]
  bool isGreaterThan(int minLength) {
    return validators.isGreaterThan(this, minLength);
  }

  /// Check if the iterable length is greater or equal than [minLength]
  bool isGreaterThanOrEqual(int minLength) {
    return validators.isGreaterThanOrEqual(this, minLength);
  }

  /// Check if the iterable length is between [minLength] and [maxLength]
  bool isBetween(int minLength, int maxLength) {
    return validators.isBetween(this, minLength, maxLength);
  }

  /// Check if the iterable is null
  Either<IterableFailure, Iterable?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  /// Check if the iterable is not null
  Either<IterableFailure, Iterable?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  /// Check if the iterable is truthy
  /// The values null or empty list are considered falsy
  Either<IterableFailure, Iterable?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  /// Check if the iterable is falsy
  /// The values null or empty list are considered falsy
  Either<IterableFailure, Iterable?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  /// Check if the iterable is empty
  Either<IterableFailure, Iterable> get fpIsEmpty {
    return fp_validators.fpIsEmpty(this);
  }

  /// Check if the iterable is not empty
  Either<IterableFailure, Iterable> get fpIsNotEmpty {
    return fp_validators.fpIsNotEmpty(this);
  }

  /// Check if the iterable is equals to another list
  Either<IterableFailure, Iterable> fpIsEqualsTo(Iterable comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  /// Check if the iterable length is less than [maxLength]
  Either<IterableFailure, Iterable> fpIsLessThan(int maxLength) {
    return fp_validators.fpIsLessThan(this, maxLength);
  }

  /// Check if the iterable length is less or equal than [maxLength]
  Either<IterableFailure, Iterable> fpIsLessThanOrEqual(int maxLength) {
    return fp_validators.fpIsLessThanOrEqual(this, maxLength);
  }

  /// Check if the iterable length is greater than [minLength]
  Either<IterableFailure, Iterable> fpIsGreaterThan(int minLength) {
    return fp_validators.fpIsGreaterThan(this, minLength);
  }

  /// Check if the iterable length is greater or equal than [minLength]
  Either<IterableFailure, Iterable> fpIsGreaterThanOrEqual(int minLength) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minLength);
  }

  /// Check if the iterable length is between [minLength] and [maxLength]
  Either<IterableFailure, Iterable> fpIsBetween(int minLength, int maxLength) {
    return fp_validators.fpIsBetween(this, minLength, maxLength);
  }
}
