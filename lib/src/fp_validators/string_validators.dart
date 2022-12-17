import 'package:dartz/dartz.dart';

import '/src/failures/string_failure.dart';
import '/src/validators/string_validators.dart';

Either<StringFailure, String> fpIsString(Object input) {
  if (isString(input)) {
    return right(input as String);
  }

  return left(StringFailure.invalidString(input));
}

Either<StringFailure, String?> fpIsNull(String? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(StringFailure.notNullable(input));
}

Either<StringFailure, String?> fpIsNotNull(String? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(StringFailure.nullable(input));
}

Either<StringFailure, String?> fpIsTruthy(String? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(StringFailure.notTruthy(input));
}

Either<StringFailure, String?> fpIsFalsy(String? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(StringFailure.notFalsy(input));
}

Either<StringFailure, String> fpIsEmpty(String input) {
  if (isEmpty(input)) {
    return right(input);
  }

  return left(StringFailure.notEmpty(input));
}

Either<StringFailure, String> fpIsNotEmpty(String input) {
  if (isNotEmpty(input)) {
    return right(input);
  }

  return left(StringFailure.empty(input));
}

Either<StringFailure, String> fpIsEqualsTo(String input, Object comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(StringFailure.notEqualsTo(input, comparison));
}

Either<StringFailure, String> fpIsIdenticalTo(String input, Object comparison) {
  if (isIdenticalTo(input, comparison)) {
    return right(input);
  }

  return left(StringFailure.notIdenticalTo(input, comparison));
}

Either<StringFailure, String> fpContains(String input, Pattern seed) {
  if (contains(input, seed)) {
    return right(input);
  }

  return left(StringFailure.notContains(input, seed));
}

Either<StringFailure, String> fpIsInList(String input, Iterable values) {
  if (isInList(input, values)) {
    return right(input);
  }

  return left(StringFailure.notInList(input, values));
}

Either<StringFailure, String> fpIsLessThan(String input, int maxLength) {
  if (isLessThan(input, maxLength)) {
    return right(input);
  }

  return left(StringFailure.exceedingLength(input, maxLength));
}

Either<StringFailure, String> fpIsLessThanOrEqual(String input, int maxLength) {
  if (isLessThanOrEqual(input, maxLength)) {
    return right(input);
  }

  return left(StringFailure.exceedingLength(input, maxLength));
}

Either<StringFailure, String> fpIsGreaterThan(String input, int minLength) {
  if (isGreaterThan(input, minLength)) {
    return right(input);
  }

  return left(StringFailure.tooShortLength(input, minLength));
}

Either<StringFailure, String> fpIsGreaterThanOrEqual(String input, int minLength) {
  if (isGreaterThanOrEqual(input, minLength)) {
    return right(input);
  }

  return left(StringFailure.tooShortLength(input, minLength));
}

Either<StringFailure, String> fpIsBetween(String input, int minLength, int maxLength) {
  if (!isGreaterThanOrEqual(input, minLength)) {
    return left(StringFailure.tooShortLength(input, minLength));
  }

  if (!isLessThanOrEqual(input, maxLength)) {
    return left(StringFailure.exceedingLength(input, maxLength));
  }

  return right(input);
}

Either<StringFailure, String> fpIsDivisibleBy(String input, Object number) {
  if (isDivisibleBy(input, number)) {
    return right(input);
  }

  return left(StringFailure.notDivisibleBy(input, number));
}

Either<StringFailure, String> fpHasMatch(String input, RegExp regex) {
  if (hasMatch(input, regex)) {
    return right(input);
  }

  return left(StringFailure.unmatchedRegExp(input, regex));
}

Either<StringFailure, String> fpIsLowerCase(String input) {
  if (isLowerCase(input)) {
    return right(input);
  }

  return left(StringFailure.notInLowerCase(input));
}

Either<StringFailure, String> fpIsUpperCase(String input) {
  if (isUpperCase(input)) {
    return right(input);
  }

  return left(StringFailure.notInUpperCase(input));
}

Either<StringFailure, String> fpIsAlpha(String input) {
  if (isAlpha(input)) {
    return right(input);
  }

  return left(StringFailure.invalidAlpha(input));
}

Either<StringFailure, String> fpIsAlphanumeric(String input) {
  if (isAlphanumeric(input)) {
    return right(input);
  }

  return left(StringFailure.invalidAlphanumeric(input));
}

Either<StringFailure, String> fpIsNumeric(String input) {
  if (isNumeric(input)) {
    return right(input);
  }

  return left(StringFailure.invalidNumeric(input));
}

Either<StringFailure, String> fpIsInt(String input) {
  if (isInt(input)) {
    return right(input);
  }

  return left(StringFailure.invalidInt(input));
}

Either<StringFailure, String> fpIsFloat(String input) {
  if (isFloat(input)) {
    return right(input);
  }

  return left(StringFailure.invalidFloat(input));
}

Either<StringFailure, String> fpIsDate(String input) {
  if (isDate(input)) {
    return right(input);
  }

  return left(StringFailure.invalidDate(input));
}

Either<StringFailure, String> fpIsBase64(String input) {
  if (isBase64(input)) {
    return right(input);
  }

  return left(StringFailure.invalidBase64(input));
}

Either<StringFailure, String> fpIsJson(String input) {
  if (isJson(input)) {
    return right(input);
  }

  return left(StringFailure.invalidJson(input));
}

Either<StringFailure, String> fpIsEmail(String input) {
  if (isEmail(input)) {
    return right(input);
  }

  return left(StringFailure.invalidEmail(input));
}

Either<StringFailure, String> fpIsPassword(String input) {
  if (isPassword(input)) {
    return right(input);
  }

  return left(StringFailure.invalidPassword(input));
}

Either<StringFailure, String> fpIsUrl(String input) {
  if (isUrl(input)) {
    return right(input);
  }

  return left(StringFailure.invalidUrl(input));
}

Either<StringFailure, String> fpIsCreditCard(String input) {
  if (isCreditCard(input)) {
    return right(input);
  }

  return left(StringFailure.invalidCreditCard(input));
}

Either<StringFailure, String> fpIsUuid(String input) {
  if (isUuid(input)) {
    return right(input);
  }

  return left(StringFailure.invalidUuid(input));
}
