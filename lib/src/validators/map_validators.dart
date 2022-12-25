bool isMap(Object? input) {
  return input is Map;
}

bool isNull(Map? input) {
  return input == null;
}

bool isNotNull(Map? input) {
  return !isNull(input);
}

bool isTruthy(Map? input) {
  if (input == null || input.isEmpty) {
    return false;
  }

  return true;
}

bool isFalsy(Map? input) {
  return !isTruthy(input);
}

bool isEmpty(Map input) {
  return input.isEmpty;
}

bool isNotEmpty(Map input) {
  return input.isNotEmpty;
}

bool isEqualsTo<T, U>(Map<T, U>? input, Map<T, U>? comparison) {
  if (input == null) {
    return comparison == null;
  }

  if (comparison == null || input.length != input.length) {
    return false;
  }

  if (identical(input, comparison)) {
    return true;
  }

  for (final T key in input.keys) {
    if (!comparison.containsKey(key) || comparison[key] != comparison[key]) {
      return false;
    }
  }

  return true;
}

bool isLessThan(Map input, int maxLength) {
  return input.length < maxLength;
}

bool isLessThanOrEqual(Map input, int maxLength) {
  return input.length <= maxLength;
}

bool isGreaterThan(Map input, int minLength) {
  return input.length > minLength;
}

bool isGreaterThanOrEqual(Map input, int minLength) {
  return input.length >= minLength;
}

bool isBetween(Map input, int minLength, int maxLength) {
  return input.length >= minLength && input.length <= maxLength;
}
