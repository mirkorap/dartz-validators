import 'package:dartz/dartz.dart';

import '/src/failures/string_failure.dart';
import '/src/validators/string_validators.dart';

/// Check if the input parameter is an instance of String
Either<StringFailure, String> fpIsString(Object? input) {
  if (isString(input)) {
    return right(input as String);
  }

  return left(StringFailure.invalidString(input));
}

/// Check if the input string is null
Either<StringFailure, String?> fpIsNull(String? input) {
  if (isNull(input)) {
    return right(input);
  }

  return left(StringFailure.notNullable(input));
}

/// Check if the input string is not null
Either<StringFailure, String?> fpIsNotNull(String? input) {
  if (isNotNull(input)) {
    return right(input);
  }

  return left(StringFailure.nullable(input));
}

/// Check if the input string is truthy
/// The values null, 'null', 'false', '0' or '' are considerate falsy
Either<StringFailure, String?> fpIsTruthy(String? input) {
  if (isTruthy(input)) {
    return right(input);
  }

  return left(StringFailure.notTruthy(input));
}

/// Check if the input string is falsy
/// The values null, 'null', 'false', '0' or '' are considerate falsy
Either<StringFailure, String?> fpIsFalsy(String? input) {
  if (isFalsy(input)) {
    return right(input);
  }

  return left(StringFailure.notFalsy(input));
}

/// Check if the input string is empty
Either<StringFailure, String> fpIsEmpty(String input) {
  if (isEmpty(input)) {
    return right(input);
  }

  return left(StringFailure.notEmpty(input));
}

/// Check if the input string is not empty
Either<StringFailure, String> fpIsNotEmpty(String input) {
  if (isNotEmpty(input)) {
    return right(input);
  }

  return left(StringFailure.empty(input));
}

/// Check if the input string is equals to another
/// The function is case-insensitive
Either<StringFailure, String> fpIsEqualsTo(String input, Object comparison) {
  if (isEqualsTo(input, comparison)) {
    return right(input);
  }

  return left(StringFailure.notEqualsTo(input, comparison));
}

/// Check if the input string is identical to another
/// The function is case-sensitive
Either<StringFailure, String> fpIsIdenticalTo(String input, Object comparison) {
  if (isIdenticalTo(input, comparison)) {
    return right(input);
  }

  return left(StringFailure.notIdenticalTo(input, comparison));
}

/// Check if the input string contains a seed
Either<StringFailure, String> fpContains(String input, Pattern seed) {
  if (contains(input, seed)) {
    return right(input);
  }

  return left(StringFailure.notContains(input, seed));
}

/// Check if the input string is in the list of values
Either<StringFailure, String> fpIsInList(String input, Iterable values) {
  if (isInList(input, values)) {
    return right(input);
  }

  return left(StringFailure.notInList(input, values));
}

/// Check if the input string has a length less than [maxLength]
Either<StringFailure, String> fpIsLessThan(String input, int maxLength) {
  if (isLessThan(input, maxLength)) {
    return right(input);
  }

  return left(StringFailure.exceedingLength(input, maxLength));
}

/// Check if the input string has a length less or equal than [maxLength]
Either<StringFailure, String> fpIsLessThanOrEqual(String input, int maxLength) {
  if (isLessThanOrEqual(input, maxLength)) {
    return right(input);
  }

  return left(StringFailure.exceedingLength(input, maxLength));
}

/// Check if the input string has a length greater than [minLength]
Either<StringFailure, String> fpIsGreaterThan(String input, int minLength) {
  if (isGreaterThan(input, minLength)) {
    return right(input);
  }

  return left(StringFailure.tooShortLength(input, minLength));
}

/// Check if the input string has a length greater or equal than [minLength]
Either<StringFailure, String> fpIsGreaterThanOrEqual(String input, int minLength) {
  if (isGreaterThanOrEqual(input, minLength)) {
    return right(input);
  }

  return left(StringFailure.tooShortLength(input, minLength));
}

/// Check if the input string has a length between [minLength] and [maxLength]
Either<StringFailure, String> fpIsBetween(String input, int minLength, int maxLength) {
  if (!isGreaterThanOrEqual(input, minLength)) {
    return left(StringFailure.tooShortLength(input, minLength));
  }

  if (!isLessThanOrEqual(input, maxLength)) {
    return left(StringFailure.exceedingLength(input, maxLength));
  }

  return right(input);
}

/// Check if the input string is divisible by [number]
Either<StringFailure, String> fpIsDivisibleBy(String input, Object number) {
  if (isDivisibleBy(input, number)) {
    return right(input);
  }

  return left(StringFailure.notDivisibleBy(input, number));
}

/// Check if the input string has a match with the [regex]
Either<StringFailure, String> fpHasMatch(String input, RegExp regex) {
  if (hasMatch(input, regex)) {
    return right(input);
  }

  return left(StringFailure.unmatchedRegExp(input, regex));
}

/// Check if the input string is in lowercase
Either<StringFailure, String> fpIsLowerCase(String input) {
  if (isLowerCase(input)) {
    return right(input);
  }

  return left(StringFailure.notInLowerCase(input));
}

/// Check if the input string is in uppercase
Either<StringFailure, String> fpIsUpperCase(String input) {
  if (isUpperCase(input)) {
    return right(input);
  }

  return left(StringFailure.notInUpperCase(input));
}

/// Check if the input string contains only letters
Either<StringFailure, String> fpIsAlpha(String input) {
  if (isAlpha(input)) {
    return right(input);
  }

  return left(StringFailure.invalidAlpha(input));
}

/// Check if the input string contains letters or numbers
Either<StringFailure, String> fpIsAlphanumeric(String input) {
  if (isAlphanumeric(input)) {
    return right(input);
  }

  return left(StringFailure.invalidAlphanumeric(input));
}

/// Check if the input string contains only numbers
Either<StringFailure, String> fpIsNumeric(String input) {
  if (isNumeric(input)) {
    return right(input);
  }

  return left(StringFailure.invalidNumeric(input));
}

/// Check if the input string is an integer
Either<StringFailure, String> fpIsInt(String input) {
  if (isInt(input)) {
    return right(input);
  }

  return left(StringFailure.invalidInt(input));
}

/// Check if the input string is a float
Either<StringFailure, String> fpIsFloat(String input) {
  if (isFloat(input)) {
    return right(input);
  }

  return left(StringFailure.invalidFloat(input));
}

/// Check if the input string is a valid date
Either<StringFailure, String> fpIsDate(String input) {
  if (isDate(input)) {
    return right(input);
  }

  return left(StringFailure.invalidDate(input));
}

/// Check if the input string is in base64
Either<StringFailure, String> fpIsBase64(String input) {
  if (isBase64(input)) {
    return right(input);
  }

  return left(StringFailure.invalidBase64(input));
}

/// Check if the input string is a valid json
Either<StringFailure, String> fpIsJson(String input) {
  if (isJson(input)) {
    return right(input);
  }

  return left(StringFailure.invalidJson(input));
}

/// Check if the input string is a valid e-mail
Either<StringFailure, String> fpIsEmail(String input) {
  if (isEmail(input)) {
    return right(input);
  }

  return left(StringFailure.invalidEmail(input));
}

/// Check if the input string is a strong password
/// Strong password should contains at least:
/// * 8 characters
/// * one letter in uppercase
/// * one in lowercase
/// * one number
/// * one special character
Either<StringFailure, String> fpIsPassword(String input) {
  if (isPassword(input)) {
    return right(input);
  }

  return left(StringFailure.invalidPassword(input));
}

/// Check if the input string is a valid url
Either<StringFailure, String> fpIsUrl(String input) {
  if (isUrl(input)) {
    return right(input);
  }

  return left(StringFailure.invalidUrl(input));
}

/// Check if the input string is a valid credit card
Either<StringFailure, String> fpIsCreditCard(String input) {
  if (isCreditCard(input)) {
    return right(input);
  }

  return left(StringFailure.invalidCreditCard(input));
}

/// Check if the input string is a valid uuid
Either<StringFailure, String> fpIsUuid(String input) {
  if (isUuid(input)) {
    return right(input);
  }

  return left(StringFailure.invalidUuid(input));
}
