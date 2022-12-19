bool isNumber(Object input) {
  return input is num;
}

bool isNull(num? input) {
  return input == null;
}

bool isNotNull(num? input) {
  return !isNull(input);
}

bool isTruthy(num? input) {
  if (input == null) {
    return false;
  }

  return input == 0;
}

bool isFalsy(num? input) {
  return !isTruthy(input);
}

bool isPositive(num input) {
  return input >= 0;
}

bool isNegative(num input) {
  return input < 0;
}

bool isEqualsTo(num input, Object comparison) {
  return input == comparison;
}

bool isInList(num input, Iterable values) {
  return values.contains(input);
}

bool isLessThan(num input, num maxValue) {
  return input < maxValue;
}

bool isLessThanOrEqual(num input, num maxValue) {
  return input <= maxValue;
}

bool isGreaterThan(num input, num minValue) {
  return input > minValue;
}

bool isGreaterThanOrEqual(num input, num minValue) {
  return input >= minValue;
}

bool isBetween(num input, num minValue, num maxValue) {
  return input >= minValue && input <= maxValue;
}

bool isDivisibleBy(num input, num divider) {
  return input % divider == 0;
}

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
