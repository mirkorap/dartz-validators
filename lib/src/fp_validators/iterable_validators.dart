import 'package:dartz/dartz.dart';

import '/src/failures/iterable_failure.dart';
import '/src/validators/iterable_validators.dart';

Either<IterableFailure, Iterable> fpIsIterable(Object? input) {
  if (isIterable(input)) {
    return right(input as Iterable);
  }

  return left(IterableFailure.invalidIterable(input));
}

Either<IterableFailure, Iterable?> fpIsNull(Iterable? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(IterableFailure.notNullable(input));
}

Either<IterableFailure, Iterable?> fpIsNotNull(Iterable? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(IterableFailure.nullable(input));
}

Either<IterableFailure, Iterable?> fpIsTruthy(Iterable? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(IterableFailure.notTruthy(input));
}

Either<IterableFailure, Iterable?> fpIsFalsy(Iterable? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(IterableFailure.notFalsy(input));
}

Either<IterableFailure, Iterable> fpIsEmpty(Iterable input) {
  if (isEmpty(input)) {
    return right(input);
  }

  return left(IterableFailure.notEmpty(input));
}

Either<IterableFailure, Iterable> fpIsNotEmpty(Iterable input) {
  if (isNotEmpty(input)) {
    return right(input);
  }

  return left(IterableFailure.empty(input));
}

Either<IterableFailure, Iterable> fpIsEqualsTo(Iterable input, Iterable comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(IterableFailure.notEqualsTo(input, comparison));
}

Either<IterableFailure, Iterable> fpIsLessThan(Iterable input, int maxLength) {
  if (isLessThan(input, maxLength)) {
    return right(input);
  }

  return left(IterableFailure.exceedingLength(input, maxLength));
}

Either<IterableFailure, Iterable> fpIsLessThanOrEqual(Iterable input, int maxLength) {
  if (isLessThanOrEqual(input, maxLength)) {
    return right(input);
  }

  return left(IterableFailure.exceedingLength(input, maxLength));
}

Either<IterableFailure, Iterable> fpIsGreaterThan(Iterable input, int minLength) {
  if (isGreaterThan(input, minLength)) {
    return right(input);
  }

  return left(IterableFailure.tooShortLength(input, minLength));
}

Either<IterableFailure, Iterable> fpIsGreaterThanOrEqual(Iterable input, int minLength) {
  if (isGreaterThanOrEqual(input, minLength)) {
    return right(input);
  }

  return left(IterableFailure.tooShortLength(input, minLength));
}

Either<IterableFailure, Iterable> fpIsBetween(Iterable input, int minLength, int maxLength) {
  if (!isGreaterThanOrEqual(input, minLength)) {
    return left(IterableFailure.tooShortLength(input, minLength));
  }

  if (!isLessThanOrEqual(input, maxLength)) {
    return left(IterableFailure.exceedingLength(input, maxLength));
  }

  return right(input);
}
