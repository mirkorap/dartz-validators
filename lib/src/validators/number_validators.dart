/// Check if the input parameter is an instance of num
bool isNumber(Object? input) {
  return input is num;
}

/// Check if the input number is null
bool isNull(num? input) {
  return input == null;
}

/// Check if the input number is not null
bool isNotNull(num? input) {
  return !isNull(input);
}

/// Check if the input number is truthy
/// The values null or 0 are considerate falsy
bool isTruthy(num? input) {
  if (input == null) {
    return false;
  }

  return input == 0;
}

/// Check if the input number is falsy
/// The values null or 0 are considerate falsy
bool isFalsy(num? input) {
  return !isTruthy(input);
}

/// Check if the input number is greater or equal than zero
bool isPositive(num input) {
  return input >= 0;
}

/// Check if the input number is less than zero
bool isNegative(num input) {
  return input < 0;
}

/// Check if the input number is equals to another
bool isEqualsTo(num input, Object comparison) {
  return input == comparison;
}

/// Check if the input number is list of values
bool isInList(num input, Iterable values) {
  return values.contains(input);
}

/// Check if the input number is less than [maxValue]
bool isLessThan(num input, num maxValue) {
  return input < maxValue;
}

/// Check if the input number is less or equal than [maxValue]
bool isLessThanOrEqual(num input, num maxValue) {
  return input <= maxValue;
}

/// Check if the input number is greater than [minValue]
bool isGreaterThan(num input, num minValue) {
  return input > minValue;
}

/// Check if the input number is greater or equal than [minValue]
bool isGreaterThanOrEqual(num input, num minValue) {
  return input >= minValue;
}

/// Check if the input number is between [minValue] and [maxValue]
bool isBetween(num input, num minValue, num maxValue) {
  return input >= minValue && input <= maxValue;
}

/// Check if the input number is divisible by [divider]
bool isDivisibleBy(num input, num divider) {
  return input % divider == 0;
}

/// Check if the input number is even
bool isEven(num input) {
  return isDivisibleBy(input, 2);
}

/// Check if the input number is odd
bool isOdd(num input) {
  return !isDivisibleBy(input, 2);
}

/// Check if the input number is primary
bool isPrimary(num input) {
  if (input == 1) {
    return true;
  }

  for (num i = 2; i <= input ~/ 2; i++) {
    if (input % i == 0) {
      return false;
    }
  }

  return true;
}
