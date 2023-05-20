import 'package:dartz/dartz.dart';

import '/src/failures/string_failure.dart';
import '/src/fp_validators/string_validators.dart' as fp_validators;
import '/src/validators/string_validators.dart' as validators;

extension StringValidators on String {
  /// Check if the string is null
  bool get isNull {
    return validators.isNull(this);
  }

  /// Check if the string is not null
  bool get isNotNull {
    return validators.isNotNull(this);
  }

  /// Check if the string is truthy
  /// The values null, 'null', 'false', '0' or '' are considerate falsy
  bool get isTruthy {
    return validators.isTruthy(this);
  }

  /// Check if the string is falsy
  /// The values null, 'null', 'false', '0' or '' are considerate falsy
  bool get isFalsy {
    return validators.isFalsy(this);
  }

  /// Check if the string is empty
  bool get isEmpty {
    return validators.isEmpty(this);
  }

  /// Check if the string is not empty
  bool get isNotEmpty {
    return validators.isNotEmpty(this);
  }

  /// Check if the string is equals to another
  /// The function is case-insensitive
  bool isEqualsTo(Object comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  /// Check if the string is identical to another
  /// The function is case-sensitive
  bool isIdenticalTo(Object comparison) {
    return validators.isIdenticalTo(this, comparison);
  }

  /// Check if the string contains a seed
  bool contains(Pattern seed) {
    return validators.contains(this, seed);
  }

  /// Check if the string is in the list of values
  bool isInList(Iterable values) {
    return validators.isInList(this, values);
  }

  /// Check if the string has a length less than [maxLength]
  bool isLessThan(int maxLength) {
    return validators.isLessThan(this, maxLength);
  }

  /// Check if the string has a length less or equal than [maxLength]
  bool isLessThanOrEqual(int maxLength) {
    return validators.isLessThanOrEqual(this, maxLength);
  }

  /// Check if the string has a length greater than [minLength]
  bool isGreaterThan(int minLength) {
    return validators.isGreaterThan(this, minLength);
  }

  /// Check if the string has a length greater or equal than [minLength]
  bool isGreaterThanOrEqual(int minLength) {
    return validators.isGreaterThanOrEqual(this, minLength);
  }

  /// Check if the string has a length between [minLength] and [maxLength]
  bool isBetween(int minLength, int maxLength) {
    return validators.isBetween(this, minLength, maxLength);
  }

  /// Check if the string is divisible by [number]
  bool isDivisibleBy(Object number) {
    return validators.isDivisibleBy(this, number);
  }

  /// Check if the string has a match with the [regex]
  bool hasMatch(RegExp regex) {
    return validators.hasMatch(this, regex);
  }

  /// Check if the string is in lowercase
  bool get isLowerCase {
    return validators.isLowerCase(this);
  }

  /// Check if the string is in uppercase
  bool get isUpperCase {
    return validators.isUpperCase(this);
  }

  /// Check if the string contains only letters
  bool get isAlpha {
    return validators.isAlpha(this);
  }

  /// Check if the string contains letters or numbers
  bool get isAlphanumeric {
    return validators.isAlphanumeric(this);
  }

  /// Check if the string contains only numbers
  bool get isNumeric {
    return validators.isNumeric(this);
  }

  /// Check if the string is an integer
  bool get isInt {
    return validators.isInt(this);
  }

  /// Check if the string is a float
  bool get isFloat {
    return validators.isFloat(this);
  }

  /// Check if the string is a valid date
  bool get isDate {
    return validators.isDate(this);
  }

  /// Check if the string is in base64
  bool get isBase64 {
    return validators.isBase64(this);
  }

  /// Check if the string is a valid json
  bool get isJson {
    return validators.isJson(this);
  }

  /// Check if the string is a valid e-mail
  bool get isEmail {
    return validators.isEmail(this);
  }

  /// Check if the string is a strong password
  /// Strong password should contains at least:
  /// * 8 characters
  /// * one letter in uppercase
  /// * one in lowercase
  /// * one number
  /// * one special character
  bool get isPassword {
    return validators.isPassword(this);
  }

  /// Check if the string is a valid url
  bool get isUrl {
    return validators.isUrl(this);
  }

  /// Check if the string is a valid credit card
  bool get isCreditCard {
    return validators.isCreditCard(this);
  }

  /// Check if the string is a valid uuid
  bool get isUuid {
    return validators.isUuid(this);
  }

  /// Check if the string is null
  Either<StringFailure, String?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  /// Check if the string is not null
  Either<StringFailure, String?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  /// Check if the string is truthy
  /// The values null, 'null', 'false', '0' or '' are considerate falsy
  Either<StringFailure, String?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  /// Check if the string is falsy
  /// The values null, 'null', 'false', '0' or '' are considerate falsy
  Either<StringFailure, String?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  /// Check if the string is empty
  Either<StringFailure, String> get fpIsEmpty {
    return fp_validators.fpIsEmpty(this);
  }

  /// Check if the string is not empty
  Either<StringFailure, String> get fpIsNotEmpty {
    return fp_validators.fpIsNotEmpty(this);
  }

  /// Check if the string is equals to another
  /// The function is case-insensitive
  Either<StringFailure, String> fpIsEqualsTo(Object comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  /// Check if the string is identical to another
  /// The function is case-sensitive
  Either<StringFailure, String> fpIsIdenticalTo(Object comparison) {
    return fp_validators.fpIsIdenticalTo(this, comparison);
  }

  /// Check if the string contains a seed
  Either<StringFailure, String> fpContains(Pattern seed) {
    return fp_validators.fpContains(this, seed);
  }

  /// Check if the string is in the list of values
  Either<StringFailure, String> fpIsInList(Iterable values) {
    return fp_validators.fpIsInList(this, values);
  }

  /// Check if the string has a length less than [maxLength]
  Either<StringFailure, String> fpIsLessThan(int maxLength) {
    return fp_validators.fpIsLessThan(this, maxLength);
  }

  /// Check if the string has a length less or equal than [maxLength]
  Either<StringFailure, String> fpIsLessThanOrEqual(int maxLength) {
    return fp_validators.fpIsLessThanOrEqual(this, maxLength);
  }

  /// Check if the string has a length greater than [minLength]
  Either<StringFailure, String> fpIsGreaterThan(int minLength) {
    return fp_validators.fpIsGreaterThan(this, minLength);
  }

  /// Check if the string has a length greater or equal than [minLength]
  Either<StringFailure, String> fpIsGreaterThanOrEqual(int minLength) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minLength);
  }

  /// Check if the string has a length between [minLength] and [maxLength]
  Either<StringFailure, String> fpIsBetween(int minLength, int maxLength) {
    return fp_validators.fpIsBetween(this, minLength, maxLength);
  }

  /// Check if the string is divisible by [number]
  Either<StringFailure, String> fpIsDivisibleBy(Object number) {
    return fp_validators.fpIsDivisibleBy(this, number);
  }

  /// Check if the string has a match with the [regex]
  Either<StringFailure, String> fpHasMatch(RegExp regex) {
    return fp_validators.fpHasMatch(this, regex);
  }

  /// Check if the string is in lowercase
  Either<StringFailure, String> get fpIsLowerCase {
    return fp_validators.fpIsLowerCase(this);
  }

  /// Check if the string is in uppercase
  Either<StringFailure, String> get fpIsUpperCase {
    return fp_validators.fpIsUpperCase(this);
  }

  /// Check if the string contains only letters
  Either<StringFailure, String> get fpIsAlpha {
    return fp_validators.fpIsAlpha(this);
  }

  /// Check if the string contains letters or numbers
  Either<StringFailure, String> get fpIsAlphanumeric {
    return fp_validators.fpIsAlphanumeric(this);
  }

  /// Check if the string contains only numbers
  Either<StringFailure, String> get fpIsNumeric {
    return fp_validators.fpIsNumeric(this);
  }

  /// Check if the string is an integer
  Either<StringFailure, String> get fpIsInt {
    return fp_validators.fpIsInt(this);
  }

  /// Check if the string is a float
  Either<StringFailure, String> get fpIsFloat {
    return fp_validators.fpIsFloat(this);
  }

  /// Check if the string is a valid date
  Either<StringFailure, String> get fpIsDate {
    return fp_validators.fpIsDate(this);
  }

  /// Check if the string is in base64
  Either<StringFailure, String> get fpIsBase64 {
    return fp_validators.fpIsBase64(this);
  }

  /// Check if the string is a valid json
  Either<StringFailure, String> get fpIsJson {
    return fp_validators.fpIsJson(this);
  }

  /// Check if the string is a valid e-mail
  Either<StringFailure, String> get fpIsEmail {
    return fp_validators.fpIsEmail(this);
  }

  /// Check if the string is a strong password
  /// Strong password should contains at least:
  /// * 8 characters
  /// * one letter in uppercase
  /// * one in lowercase
  /// * one number
  /// * one special character
  Either<StringFailure, String> get fpIsPassword {
    return fp_validators.fpIsPassword(this);
  }

  /// Check if the string is a valid url
  Either<StringFailure, String> get fpIsUrl {
    return fp_validators.fpIsUrl(this);
  }

  /// Check if the string is a valid credit card
  Either<StringFailure, String> get fpIsCreditCard {
    return fp_validators.fpIsCreditCard(this);
  }

  /// Check if the string is a valid uuid
  Either<StringFailure, String> get fpIsUuid {
    return fp_validators.fpIsUuid(this);
  }
}
