import 'dart:convert';

import 'package:credit_card_validator/card_number.dart';
import 'package:email_validator/email_validator.dart';
import 'package:uuid/uuid.dart';

bool isString(Object? input) {
  return input is String;
}

bool isNull(String? input) {
  return input == null;
}

bool isNotNull(String? input) {
  return !isNull(input);
}

bool isTruthy(String? input) {
  if (input == null || input == 'null' || input == 'false' || input == '0') {
    return false;
  }

  return input.isEmpty;
}

bool isFalsy(String? input) {
  return !isTruthy(input);
}

bool isEmpty(String input) {
  return input.isEmpty;
}

bool isNotEmpty(String input) {
  return input.isNotEmpty;
}

bool isEqualsTo(String input, Object comparison) {
  return input.toLowerCase() == comparison.toString().toLowerCase();
}

bool isIdenticalTo(String input, Object comparison) {
  return input == comparison.toString();
}

bool contains(String input, Pattern seed) {
  return input.contains(seed);
}

bool isInList(String input, Iterable values) {
  return values.contains(input);
}

bool isLessThan(String input, int maxLength) {
  return input.length < maxLength;
}

bool isLessThanOrEqual(String input, int maxLength) {
  return input.length <= maxLength;
}

bool isGreaterThan(String input, int minLength) {
  return input.length > minLength;
}

bool isGreaterThanOrEqual(String input, int minLength) {
  return input.length >= minLength;
}

bool isBetween(String input, int minLength, int maxLength) {
  return input.length >= minLength && input.length <= maxLength;
}

bool isDivisibleBy(String input, Object number) {
  try {
    return double.parse(input) % int.parse(number.toString()) == 0;
  } catch (e) {
    return false;
  }
}

bool hasMatch(String input, RegExp regex) {
  return regex.hasMatch(input);
}

bool isLowerCase(String input) {
  return input == input.toLowerCase();
}

bool isUpperCase(String input) {
  return input == input.toUpperCase();
}

bool isAlpha(String input) {
  final regex = r"""^[a-zA-Z]+$""";

  return RegExp(regex).hasMatch(input);
}

bool isAlphanumeric(String input) {
  final regex = r"""^[a-zA-Z0-9]+$""";

  return RegExp(regex).hasMatch(input);
}

bool isNumeric(String input) {
  final regex = r"""^-?[0-9]+$""";

  return RegExp(regex).hasMatch(input);
}

bool isInt(String input) {
  final regex = r"""^(?:-?(?:0|[1-9][0-9]*))$""";

  return RegExp(regex).hasMatch(input);
}

bool isFloat(String input) {
  final regex = r"""^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$""";

  return RegExp(regex).hasMatch(input);
}

bool isDate(String input) {
  return DateTime.tryParse(input) is DateTime;
}

bool isBase64(String input) {
  final regex = r"""^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$""";

  return RegExp(regex).hasMatch(input);
}

bool isJson(String input) {
  try {
    json.decode(input);
  } catch (e) {
    return false;
  }

  return true;
}

bool isEmail(String input) {
  return EmailValidator.validate(input);
}

bool isPassword(String input) {
  final regex = r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$@!%&*?])[A-Za-z\d#$@!%&*?]{8,30}$""";

  return RegExp(regex).hasMatch(input);
}

bool isUrl(String input) {
  return Uri.tryParse(input) is Uri;
}

bool isCreditCard(String input) {
  return validateCardNumber(input).isValid;
}

bool isUuid(String input) {
  return Uuid.isValidUUID(fromString: input);
}
