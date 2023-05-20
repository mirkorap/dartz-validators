/// Check if the input parameter is an instance of Map
bool isMap(Object? input) {
  return input is Map;
}

/// Check if the input map is null
bool isNull(Map? input) {
  return input == null;
}

/// Check if the input map is not null
bool isNotNull(Map? input) {
  return !isNull(input);
}

/// Check if the input map is truthy
/// The values null or empty map are considered falsy
bool isTruthy(Map? input) {
  if (input == null || input.isEmpty) {
    return false;
  }

  return true;
}

/// Check if the input map is falsy
/// The values null and empty map are considered falsy
bool isFalsy(Map? input) {
  return !isTruthy(input);
}

/// Check if the input map is empty
bool isEmpty(Map input) {
  return input.isEmpty;
}

/// Check if the input map is not empty
bool isNotEmpty(Map input) {
  return input.isNotEmpty;
}

/// Check if the input map is equals to another map
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

/// Check if the input map length is less than [maxLength]
bool isLessThan(Map input, int maxLength) {
  return input.length < maxLength;
}

/// Check if the input map length is less or equal than [maxLength]
bool isLessThanOrEqual(Map input, int maxLength) {
  return input.length <= maxLength;
}

/// Check if the input map length is greater than [minLength]
bool isGreaterThan(Map input, int minLength) {
  return input.length > minLength;
}

/// Check if the input map length is greater or equal than [minLength]
bool isGreaterThanOrEqual(Map input, int minLength) {
  return input.length >= minLength;
}

/// Check if the input map length is between [minLength] and [maxLength]
bool isBetween(Map input, int minLength, int maxLength) {
  return input.length >= minLength && input.length <= maxLength;
}
