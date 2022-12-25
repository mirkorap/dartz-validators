import 'package:dartz/dartz.dart';

import '/src/failures/map_failure.dart';
import '/src/validators/map_validators.dart';

Either<MapFailure, Map> fpIsMap(Object? input) {
  if (isMap(input)) {
    return right(input as Map);
  }

  return left(MapFailure.invalidMap(input));
}

Either<MapFailure, Map?> fpIsNull(Map? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(MapFailure.notNullable(input));
}

Either<MapFailure, Map?> fpIsNotNull(Map? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(MapFailure.nullable(input));
}

Either<MapFailure, Map?> fpIsTruthy(Map? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(MapFailure.notTruthy(input));
}

Either<MapFailure, Map?> fpIsFalsy(Map? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(MapFailure.notFalsy(input));
}

Either<MapFailure, Map> fpIsEmpty(Map input) {
  if (isEmpty(input)) {
    return right(input);
  }

  return left(MapFailure.notEmpty(input));
}

Either<MapFailure, Map> fpIsNotEmpty(Map input) {
  if (isNotEmpty(input)) {
    return right(input);
  }

  return left(MapFailure.empty(input));
}

Either<MapFailure, Map> fpIsEqualsTo(Map input, Map comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(MapFailure.notEqualsTo(input, comparison));
}

Either<MapFailure, Map> fpIsLessThan(Map input, int maxLength) {
  if (isLessThan(input, maxLength)) {
    return right(input);
  }

  return left(MapFailure.exceedingLength(input, maxLength));
}

Either<MapFailure, Map> fpIsLessThanOrEqual(Map input, int maxLength) {
  if (isLessThanOrEqual(input, maxLength)) {
    return right(input);
  }

  return left(MapFailure.exceedingLength(input, maxLength));
}

Either<MapFailure, Map> fpIsGreaterThan(Map input, int minLength) {
  if (isGreaterThan(input, minLength)) {
    return right(input);
  }

  return left(MapFailure.tooShortLength(input, minLength));
}

Either<MapFailure, Map> fpIsGreaterThanOrEqual(Map input, int minLength) {
  if (isGreaterThanOrEqual(input, minLength)) {
    return right(input);
  }

  return left(MapFailure.tooShortLength(input, minLength));
}

Either<MapFailure, Map> fpIsBetween(Map input, int minLength, int maxLength) {
  if (!isGreaterThanOrEqual(input, minLength)) {
    return left(MapFailure.tooShortLength(input, minLength));
  }

  if (!isLessThanOrEqual(input, maxLength)) {
    return left(MapFailure.exceedingLength(input, maxLength));
  }

  return right(input);
}
