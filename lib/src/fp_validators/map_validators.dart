import 'package:dartz/dartz.dart';

import '/src/failures/map_failure.dart';
import '/src/validators/map_validators.dart';

/// Check if the input parameter is an instance of Map
Either<MapFailure, Map> fpIsMap(Object? input) {
  if (isMap(input)) {
    return right(input as Map);
  }

  return left(MapFailure.invalidMap(input));
}

/// Check if the input map is null
Either<MapFailure, Map?> fpIsNull(Map? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(MapFailure.notNullable(input));
}

/// Check if the input map is not null
Either<MapFailure, Map?> fpIsNotNull(Map? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(MapFailure.nullable(input));
}

/// Check if the input map is truthy
/// The values null or empty map are considered falsy
Either<MapFailure, Map?> fpIsTruthy(Map? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(MapFailure.notTruthy(input));
}

/// Check if the input map is falsy
/// The values null and empty map are considered falsy
Either<MapFailure, Map?> fpIsFalsy(Map? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(MapFailure.notFalsy(input));
}

/// Check if the input map is empty
Either<MapFailure, Map> fpIsEmpty(Map input) {
  if (isEmpty(input)) {
    return right(input);
  }

  return left(MapFailure.notEmpty(input));
}

/// Check if the input map is not empty
Either<MapFailure, Map> fpIsNotEmpty(Map input) {
  if (isNotEmpty(input)) {
    return right(input);
  }

  return left(MapFailure.empty(input));
}

/// Check if the input map is equals to another map
Either<MapFailure, Map> fpIsEqualsTo(Map input, Map comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(MapFailure.notEqualsTo(input, comparison));
}

/// Check if the input map length is less than [maxLength]
Either<MapFailure, Map> fpIsLessThan(Map input, int maxLength) {
  if (isLessThan(input, maxLength)) {
    return right(input);
  }

  return left(MapFailure.exceedingLength(input, maxLength));
}

/// Check if the input map length is less or equal than [maxLength]
Either<MapFailure, Map> fpIsLessThanOrEqual(Map input, int maxLength) {
  if (isLessThanOrEqual(input, maxLength)) {
    return right(input);
  }

  return left(MapFailure.exceedingLength(input, maxLength));
}

/// Check if the input map length is greater than [minLength]
Either<MapFailure, Map> fpIsGreaterThan(Map input, int minLength) {
  if (isGreaterThan(input, minLength)) {
    return right(input);
  }

  return left(MapFailure.tooShortLength(input, minLength));
}

/// Check if the input map length is greater or equal than [minLength]
Either<MapFailure, Map> fpIsGreaterThanOrEqual(Map input, int minLength) {
  if (isGreaterThanOrEqual(input, minLength)) {
    return right(input);
  }

  return left(MapFailure.tooShortLength(input, minLength));
}

/// Check if the input map length is between [minLength] and [maxLength]
Either<MapFailure, Map> fpIsBetween(Map input, int minLength, int maxLength) {
  if (!isGreaterThanOrEqual(input, minLength)) {
    return left(MapFailure.tooShortLength(input, minLength));
  }

  if (!isLessThanOrEqual(input, maxLength)) {
    return left(MapFailure.exceedingLength(input, maxLength));
  }

  return right(input);
}
