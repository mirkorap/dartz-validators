import 'package:dartz/dartz.dart';

import '/src/failures/number_failure.dart';
import '/src/validators/number_validators.dart';

Either<NumberFailure, num> fpIsNumber(Object? input) {
  if (isNumber(input)) {
    return right(input as num);
  }

  return left(NumberFailure.invalidNumber(input));
}

Either<NumberFailure, num?> fpIsNull(num? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(NumberFailure.notNullable(input));
}

Either<NumberFailure, num?> fpIsNotNull(num? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(NumberFailure.nullable(input));
}

Either<NumberFailure, num?> fpIsTruthy(num? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(NumberFailure.notTruthy(input));
}

Either<NumberFailure, num?> fpIsFalsy(num? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(NumberFailure.notFalsy(input));
}

Either<NumberFailure, num> fpIsPositive(num input) {
  if (isPositive(input)) {
    return right(input);
  }

  return left(NumberFailure.notPositive(input));
}

Either<NumberFailure, num> fpIsNegative(num input) {
  if (isNegative(input)) {
    return right(input);
  }

  return left(NumberFailure.notNegative(input));
}

Either<NumberFailure, num> fpIsEqualsTo(num input, Object comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(NumberFailure.notEqualsTo(input, comparison));
}

Either<NumberFailure, num> fpIsInList(num input, Iterable values) {
  if (isInList(input, values)) {
    return right(input);
  }

  return left(NumberFailure.notInList(input, values));
}

Either<NumberFailure, num> fpIsLessThan(num input, num maxValue) {
  if (isLessThan(input, maxValue)) {
    return right(input);
  }

  return left(NumberFailure.tooBig(input, maxValue));
}

Either<NumberFailure, num> fpIsLessThanOrEqual(num input, num maxValue) {
  if (isLessThanOrEqual(input, maxValue)) {
    return right(input);
  }

  return left(NumberFailure.tooBig(input, maxValue));
}

Either<NumberFailure, num> fpIsGreaterThan(num input, num minValue) {
  if (isGreaterThan(input, minValue)) {
    return right(input);
  }

  return left(NumberFailure.tooSmall(input, minValue));
}

Either<NumberFailure, num> fpIsGreaterThanOrEqual(num input, num minValue) {
  if (isGreaterThanOrEqual(input, minValue)) {
    return right(input);
  }

  return left(NumberFailure.tooSmall(input, minValue));
}

Either<NumberFailure, num> fpIsBetween(num input, num minValue, num maxValue) {
  if (!isGreaterThanOrEqual(input, minValue)) {
    return left(NumberFailure.tooSmall(input, minValue));
  }

  if (!isLessThanOrEqual(input, maxValue)) {
    return left(NumberFailure.tooBig(input, maxValue));
  }

  return right(input);
}

Either<NumberFailure, num> fpIsDivisibleBy(num input, num divider) {
  if (isDivisibleBy(input, divider)) {
    return right(input);
  }

  return left(NumberFailure.notDivisibleBy(input, divider));
}

Either<NumberFailure, num> fpIsEven(num input) {
  if (isEven(input)) {
    return right(input);
  }

  return left(NumberFailure.notEven(input));
}

Either<NumberFailure, num> fpIsOdd(num input) {
  if (isOdd(input)) {
    return right(input);
  }

  return left(NumberFailure.notOdd(input));
}

Either<NumberFailure, num> fpIsPrimary(num input) {
  if (isPrimary(input)) {
    return right(input);
  }

  return left(NumberFailure.notPrimary(input));
}
