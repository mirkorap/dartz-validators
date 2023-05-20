import 'package:dartz/dartz.dart';

import '/src/failures/iterable_failure.dart';
import '/src/validators/iterable_validators.dart';

/// Check if the input parameter is an instance of Iterable
Either<IterableFailure, Iterable> fpIsIterable(Object? input) {
  if (isIterable(input)) {
    return right(input as Iterable);
  }

  return left(IterableFailure.invalidIterable(input));
}

/// Check if the input iterable is null
Either<IterableFailure, Iterable?> fpIsNull(Iterable? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(IterableFailure.notNullable(input));
}

/// Check if the input iterable is not null
Either<IterableFailure, Iterable?> fpIsNotNull(Iterable? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(IterableFailure.nullable(input));
}

/// Check if the input iterable is truthy
/// The values null or empty list are considered falsy
Either<IterableFailure, Iterable?> fpIsTruthy(Iterable? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(IterableFailure.notTruthy(input));
}

/// Check if the input iterable is falsy
/// The values null or empty list are considered falsy
Either<IterableFailure, Iterable?> fpIsFalsy(Iterable? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(IterableFailure.notFalsy(input));
}

/// Check if the input iterable is empty
Either<IterableFailure, Iterable> fpIsEmpty(Iterable input) {
  if (isEmpty(input)) {
    return right(input);
  }

  return left(IterableFailure.notEmpty(input));
}

/// Check if the input iterable is not empty
Either<IterableFailure, Iterable> fpIsNotEmpty(Iterable input) {
  if (isNotEmpty(input)) {
    return right(input);
  }

  return left(IterableFailure.empty(input));
}

/// Check if the input iterable is equals to another list
Either<IterableFailure, Iterable> fpIsEqualsTo(Iterable input, Iterable comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(IterableFailure.notEqualsTo(input, comparison));
}

/// Check if the input iterable length is less than [maxLength]
Either<IterableFailure, Iterable> fpIsLessThan(Iterable input, int maxLength) {
  if (isLessThan(input, maxLength)) {
    return right(input);
  }

  return left(IterableFailure.exceedingLength(input, maxLength));
}

/// Check if the input iterable length is less or equal than [maxLength]
Either<IterableFailure, Iterable> fpIsLessThanOrEqual(Iterable input, int maxLength) {
  if (isLessThanOrEqual(input, maxLength)) {
    return right(input);
  }

  return left(IterableFailure.exceedingLength(input, maxLength));
}

/// Check if the input iterable length is greater than [minLength]
Either<IterableFailure, Iterable> fpIsGreaterThan(Iterable input, int minLength) {
  if (isGreaterThan(input, minLength)) {
    return right(input);
  }

  return left(IterableFailure.tooShortLength(input, minLength));
}

/// Check if the input iterable length is greater or equal than [minLength]
Either<IterableFailure, Iterable> fpIsGreaterThanOrEqual(Iterable input, int minLength) {
  if (isGreaterThanOrEqual(input, minLength)) {
    return right(input);
  }

  return left(IterableFailure.tooShortLength(input, minLength));
}

/// Check if the input iterable length is between [minLength] and [maxLength]
Either<IterableFailure, Iterable> fpIsBetween(Iterable input, int minLength, int maxLength) {
  if (!isGreaterThanOrEqual(input, minLength)) {
    return left(IterableFailure.tooShortLength(input, minLength));
  }

  if (!isLessThanOrEqual(input, maxLength)) {
    return left(IterableFailure.exceedingLength(input, maxLength));
  }

  return right(input);
}
