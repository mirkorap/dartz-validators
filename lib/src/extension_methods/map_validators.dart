import 'package:dartz/dartz.dart';

import '/src/failures/map_failure.dart';
import '/src/fp_validators/map_validators.dart' as fp_validators;
import '/src/validators/map_validators.dart' as validators;

extension MapValidators on Map {
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

  bool isEqualsTo(Map comparison) {
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

  Either<MapFailure, Map?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  Either<MapFailure, Map?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  Either<MapFailure, Map?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  Either<MapFailure, Map?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  Either<MapFailure, Map> get fpIsEmpty {
    return fp_validators.fpIsEmpty(this);
  }

  Either<MapFailure, Map> get fpIsNotEmpty {
    return fp_validators.fpIsNotEmpty(this);
  }

  Either<MapFailure, Map> fpIsEqualsTo(Map comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  Either<MapFailure, Map> fpIsLessThan(int maxLength) {
    return fp_validators.fpIsLessThan(this, maxLength);
  }

  Either<MapFailure, Map> fpIsLessThanOrEqual(int maxLength) {
    return fp_validators.fpIsLessThanOrEqual(this, maxLength);
  }

  Either<MapFailure, Map> fpIsGreaterThan(int minLength) {
    return fp_validators.fpIsGreaterThan(this, minLength);
  }

  Either<MapFailure, Map> fpIsGreaterThanOrEqual(int minLength) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minLength);
  }

  Either<MapFailure, Map> fpIsBetween(int minLength, int maxLength) {
    return fp_validators.fpIsBetween(this, minLength, maxLength);
  }
}
