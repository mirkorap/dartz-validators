import 'package:dartz/dartz.dart';

import '/src/failures/number_failure.dart';
import '/src/validators/number_validators.dart';

/// Check if the input parameter is an instance of num
Either<NumberFailure, num> fpIsNumber(Object? input) {
  if (isNumber(input)) {
    return right(input as num);
  }

  return left(NumberFailure.invalidNumber(input));
}

/// Check if the input number is null
Either<NumberFailure, num?> fpIsNull(num? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(NumberFailure.notNullable(input));
}

/// Check if the input number is not null
Either<NumberFailure, num?> fpIsNotNull(num? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(NumberFailure.nullable(input));
}

/// Check if the input number is truthy
/// The values null or 0 are considerate falsy
Either<NumberFailure, num?> fpIsTruthy(num? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(NumberFailure.notTruthy(input));
}

/// Check if the input number is falsy
/// The values null or 0 are considerate falsy
Either<NumberFailure, num?> fpIsFalsy(num? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(NumberFailure.notFalsy(input));
}

/// Check if the input number is greater or equal than zero
Either<NumberFailure, num> fpIsPositive(num input) {
  if (isPositive(input)) {
    return right(input);
  }

  return left(NumberFailure.notPositive(input));
}

/// Check if the input number is less than zero
Either<NumberFailure, num> fpIsNegative(num input) {
  if (isNegative(input)) {
    return right(input);
  }

  return left(NumberFailure.notNegative(input));
}

/// Check if the input number is equals to another
Either<NumberFailure, num> fpIsEqualsTo(num input, Object comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(NumberFailure.notEqualsTo(input, comparison));
}

/// Check if the input number is list of values
Either<NumberFailure, num> fpIsInList(num input, Iterable values) {
  if (isInList(input, values)) {
    return right(input);
  }

  return left(NumberFailure.notInList(input, values));
}

/// Check if the input number is less than [maxValue]
Either<NumberFailure, num> fpIsLessThan(num input, num maxValue) {
  if (isLessThan(input, maxValue)) {
    return right(input);
  }

  return left(NumberFailure.tooBig(input, maxValue));
}

/// Check if the input number is less or equal than [maxValue]
Either<NumberFailure, num> fpIsLessThanOrEqual(num input, num maxValue) {
  if (isLessThanOrEqual(input, maxValue)) {
    return right(input);
  }

  return left(NumberFailure.tooBig(input, maxValue));
}

/// Check if the input number is greater than [minValue]
Either<NumberFailure, num> fpIsGreaterThan(num input, num minValue) {
  if (isGreaterThan(input, minValue)) {
    return right(input);
  }

  return left(NumberFailure.tooSmall(input, minValue));
}

/// Check if the input number is greater or equal than [minValue]
Either<NumberFailure, num> fpIsGreaterThanOrEqual(num input, num minValue) {
  if (isGreaterThanOrEqual(input, minValue)) {
    return right(input);
  }

  return left(NumberFailure.tooSmall(input, minValue));
}

/// Check if the input number is between [minValue] and [maxValue]
Either<NumberFailure, num> fpIsBetween(num input, num minValue, num maxValue) {
  if (!isGreaterThanOrEqual(input, minValue)) {
    return left(NumberFailure.tooSmall(input, minValue));
  }

  if (!isLessThanOrEqual(input, maxValue)) {
    return left(NumberFailure.tooBig(input, maxValue));
  }

  return right(input);
}

/// Check if the input number is divisible by [divider]
Either<NumberFailure, num> fpIsDivisibleBy(num input, num divider) {
  if (isDivisibleBy(input, divider)) {
    return right(input);
  }

  return left(NumberFailure.notDivisibleBy(input, divider));
}

/// Check if the input number is even
Either<NumberFailure, num> fpIsEven(num input) {
  if (isEven(input)) {
    return right(input);
  }

  return left(NumberFailure.notEven(input));
}

/// Check if the input number is odd
Either<NumberFailure, num> fpIsOdd(num input) {
  if (isOdd(input)) {
    return right(input);
  }

  return left(NumberFailure.notOdd(input));
}

/// Check if the input number is primary
Either<NumberFailure, num> fpIsPrimary(num input) {
  if (isPrimary(input)) {
    return right(input);
  }

  return left(NumberFailure.notPrimary(input));
}
