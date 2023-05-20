/// Check if the input parameter is an instance of Iterable
bool isIterable(Object? input) {
  return input is Iterable;
}

/// Check if the input iterable is null
bool isNull(Iterable? input) {
  return input == null;
}

/// Check if the input iterable is not null
bool isNotNull(Iterable? input) {
  return !isNull(input);
}

/// Check if the input iterable is truthy
/// The values null or empty list are considered falsy
bool isTruthy(Iterable? input) {
  if (input == null || input.isEmpty) {
    return false;
  }

  return true;
}

/// Check if the input iterable is falsy
/// The values null or empty list are considered falsy
bool isFalsy(Iterable? input) {
  return !isTruthy(input);
}

/// Check if the input iterable is empty
bool isEmpty(Iterable input) {
  return input.isEmpty;
}

/// Check if the input iterable is not empty
bool isNotEmpty(Iterable input) {
  return input.isNotEmpty;
}

/// Check if the input iterable is equals to another list
bool isEqualsTo(Iterable? input, Iterable? comparison) {
  if (input == null) {
    return comparison == null;
  }

  if (comparison == null || input.length != input.length) {
    return false;
  }

  if (identical(input, comparison)) {
    return true;
  }

  for (int index = 0; index < input.length; index += 1) {
    if (input.elementAt(index) != comparison.elementAt(index)) {
      return false;
    }
  }

  return true;
}

/// Check if the input iterable length is less than [maxLength]
bool isLessThan(Iterable input, int maxLength) {
  return input.length < maxLength;
}

/// Check if the input iterable length is less or equal than [maxLength]
bool isLessThanOrEqual(Iterable input, int maxLength) {
  return input.length <= maxLength;
}

/// Check if the input iterable length is greater than [minLength]
bool isGreaterThan(Iterable input, int minLength) {
  return input.length > minLength;
}

/// Check if the input iterable length is greater or equal than [minLength]
bool isGreaterThanOrEqual(Iterable input, int minLength) {
  return input.length >= minLength;
}

/// Check if the input iterable length is between [minLength] and [maxLength]
bool isBetween(Iterable input, int minLength, int maxLength) {
  return input.length >= minLength && input.length <= maxLength;
}
