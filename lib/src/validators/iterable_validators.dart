bool isIterable(Object? input) {
  return input is Iterable;
}

bool isNull(Iterable? input) {
  return input == null;
}

bool isNotNull(Iterable? input) {
  return !isNull(input);
}

bool isTruthy(Iterable? input) {
  if (input == null || input.isEmpty) {
    return false;
  }

  return true;
}

bool isFalsy(Iterable? input) {
  return !isTruthy(input);
}

bool isEmpty(Iterable input) {
  return input.isEmpty;
}

bool isNotEmpty(Iterable input) {
  return input.isNotEmpty;
}

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

bool isLessThan(Iterable input, int maxLength) {
  return input.length < maxLength;
}

bool isLessThanOrEqual(Iterable input, int maxLength) {
  return input.length <= maxLength;
}

bool isGreaterThan(Iterable input, int minLength) {
  return input.length > minLength;
}

bool isGreaterThanOrEqual(Iterable input, int minLength) {
  return input.length >= minLength;
}

bool isBetween(Iterable input, int minLength, int maxLength) {
  return input.length >= minLength && input.length <= maxLength;
}
