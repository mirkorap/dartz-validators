import 'package:dartz/dartz.dart';

import '/src/failures/map_failure.dart';
import '/src/fp_validators/map_validators.dart' as fp_validators;
import '/src/validators/map_validators.dart' as validators;

extension MapValidators on Map {
  /// Check if the map is null
  bool get isNull {
    return validators.isNull(this);
  }

  /// Check if the map is not null
  bool get isNotNull {
    return validators.isNotNull(this);
  }

  /// Check if the map is truthy
  /// The values null or empty map are considered falsy
  bool get isTruthy {
    return validators.isTruthy(this);
  }

  /// Check if the map is falsy
  /// The values null and empty map are considered falsy
  bool get isFalsy {
    return validators.isFalsy(this);
  }

  /// Check if the map is empty
  bool get isEmpty {
    return validators.isEmpty(this);
  }

  /// Check if the map is not empty
  bool get isNotEmpty {
    return validators.isNotEmpty(this);
  }

  /// Check if the map is equals to another map
  bool isEqualsTo(Map comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  /// Check if the map length is less than [maxLength]
  bool isLessThan(int maxLength) {
    return validators.isLessThan(this, maxLength);
  }

  /// Check if the map length is less or equal than [maxLength]
  bool isLessThanOrEqual(int maxLength) {
    return validators.isLessThanOrEqual(this, maxLength);
  }

  /// Check if the map length is greater than [minLength]
  bool isGreaterThan(int minLength) {
    return validators.isGreaterThan(this, minLength);
  }

  /// Check if the map length is greater or equal than [minLength]
  bool isGreaterThanOrEqual(int minLength) {
    return validators.isGreaterThanOrEqual(this, minLength);
  }

  /// Check if the map length is between [minLength] and [maxLength]
  bool isBetween(int minLength, int maxLength) {
    return validators.isBetween(this, minLength, maxLength);
  }

  /// Check if the map is null
  Either<MapFailure, Map?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  /// Check if the map is not null
  Either<MapFailure, Map?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  /// Check if the map is truthy
  /// The values null or empty map are considered falsy
  Either<MapFailure, Map?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  /// Check if the map is falsy
  /// The values null and empty map are considered falsy
  Either<MapFailure, Map?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  /// Check if the map is empty
  Either<MapFailure, Map> get fpIsEmpty {
    return fp_validators.fpIsEmpty(this);
  }

  /// Check if the map is not empty
  Either<MapFailure, Map> get fpIsNotEmpty {
    return fp_validators.fpIsNotEmpty(this);
  }

  /// Check if the map is equals to another map
  Either<MapFailure, Map> fpIsEqualsTo(Map comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  /// Check if the map length is less than [maxLength]
  Either<MapFailure, Map> fpIsLessThan(int maxLength) {
    return fp_validators.fpIsLessThan(this, maxLength);
  }

  /// Check if the map length is less or equal than [maxLength]
  Either<MapFailure, Map> fpIsLessThanOrEqual(int maxLength) {
    return fp_validators.fpIsLessThanOrEqual(this, maxLength);
  }

  /// Check if the map length is greater than [minLength]
  Either<MapFailure, Map> fpIsGreaterThan(int minLength) {
    return fp_validators.fpIsGreaterThan(this, minLength);
  }

  /// Check if the map length is greater or equal than [minLength]
  Either<MapFailure, Map> fpIsGreaterThanOrEqual(int minLength) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minLength);
  }

  /// Check if the map length is between [minLength] and [maxLength]
  Either<MapFailure, Map> fpIsBetween(int minLength, int maxLength) {
    return fp_validators.fpIsBetween(this, minLength, maxLength);
  }
}
