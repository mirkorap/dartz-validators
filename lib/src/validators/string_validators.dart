import 'dart:convert';

import 'package:credit_card_validator/card_number.dart';
import 'package:email_validator/email_validator.dart';
import 'package:uuid/uuid.dart';

/// Check if the input parameter is an instance of String
bool isString(Object? input) {
  return input is String;
}

/// Check if the input string is null
bool isNull(String? input) {
  return input == null;
}

/// Check if the input string is not null
bool isNotNull(String? input) {
  return !isNull(input);
}

/// Check if the input string is truthy
/// The values null, 'null', 'false', '0' or '' are considerate falsy
bool isTruthy(String? input) {
  if (input == null || input == 'null' || input == 'false' || input == '0') {
    return false;
  }

  return input.isNotEmpty;
}

/// Check if the input string is falsy
/// The values null, 'null', 'false', '0' or '' are considerate falsy
bool isFalsy(String? input) {
  return !isTruthy(input);
}

/// Check if the input string is empty
bool isEmpty(String input) {
  return input.isEmpty;
}

/// Check if the input string is not empty
bool isNotEmpty(String input) {
  return input.isNotEmpty;
}

/// Check if the input string is equals to another
/// The function is case-insensitive
bool isEqualsTo(String input, Object comparison) {
  return input.toLowerCase() == comparison.toString().toLowerCase();
}

/// Check if the input string is identical to another
/// The function is case-sensitive
bool isIdenticalTo(String input, Object comparison) {
  return input == comparison.toString();
}

/// Check if the input string contains a seed
bool contains(String input, Pattern seed) {
  return input.contains(seed);
}

/// Check if the input string is in the list of values
bool isInList(String input, Iterable values) {
  return values.contains(input);
}

/// Check if the input string has a length less than [maxLength]
bool isLessThan(String input, int maxLength) {
  return input.length < maxLength;
}

/// Check if the input string has a length less or equal than [maxLength]
bool isLessThanOrEqual(String input, int maxLength) {
  return input.length <= maxLength;
}

/// Check if the input string has a length greater than [minLength]
bool isGreaterThan(String input, int minLength) {
  return input.length > minLength;
}

/// Check if the input string has a length greater or equal than [minLength]
bool isGreaterThanOrEqual(String input, int minLength) {
  return input.length >= minLength;
}

/// Check if the input string has a length between [minLength] and [maxLength]
bool isBetween(String input, int minLength, int maxLength) {
  return input.length >= minLength && input.length <= maxLength;
}

/// Check if the input string is divisible by [number]
bool isDivisibleBy(String input, Object number) {
  try {
    return double.parse(input) % int.parse(number.toString()) == 0;
  } catch (e) {
    return false;
  }
}

/// Check if the input string has a match with the [regex]
bool hasMatch(String input, RegExp regex) {
  return regex.hasMatch(input);
}

/// Check if the input string is in lowercase
bool isLowerCase(String input) {
  return input == input.toLowerCase();
}

/// Check if the input string is in uppercase
bool isUpperCase(String input) {
  return input == input.toUpperCase();
}

/// Check if the input string contains only letters
bool isAlpha(String input) {
  final regex = r"""^[a-zA-Z]+$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string contains letters or numbers
bool isAlphanumeric(String input) {
  final regex = r"""^[a-zA-Z0-9]+$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string contains only numbers
bool isNumeric(String input) {
  final regex = r"""^-?[0-9]+$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string is an integer
bool isInt(String input) {
  final regex = r"""^(?:-?(?:0|[1-9][0-9]*))$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string is a float
bool isFloat(String input) {
  final regex = r"""^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string is a valid date
bool isDate(String input) {
  return DateTime.tryParse(input) is DateTime;
}

/// Check if the input string is in base64
bool isBase64(String input) {
  final regex = r"""^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string is a valid json
bool isJson(String input) {
  try {
    json.decode(input);
  } catch (e) {
    return false;
  }

  return true;
}

/// Check if the input string is a valid e-mail
bool isEmail(String input) {
  return EmailValidator.validate(input);
}

/// Check if the input string is a strong password
/// Strong password should contains at least:
/// * 8 characters
/// * one letter in uppercase
/// * one in lowercase
/// * one number
/// * one special character
bool isPassword(String input) {
  final regex = r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$""";

  return RegExp(regex).hasMatch(input);
}

/// Check if the input string is a valid url
bool isUrl(String input) {
  return Uri.tryParse(input) is Uri;
}

/// Check if the input string is a valid credit card
bool isCreditCard(String input) {
  return validateCardNumber(input).isValid;
}

/// Check if the input string is a valid uuid
bool isUuid(String input) {
  return Uuid.isValidUUID(fromString: input);
}
