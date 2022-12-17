import 'package:dartz/dartz.dart';

import '/src/failures/string_failure.dart';
import '/src/fp_validators/string_validators.dart' as fp_validators;
import '/src/validators/string_validators.dart' as validators;

extension StringValidators on String {
  bool get isNull {
    return validators.isNull(this);
  }

  bool get isNotNull {
    return validators.isNotNull(this);
  }

  bool get isTruthy {
    return validators.isTruthy(this);
  }

  bool get isFalsy {
    return validators.isFalsy(this);
  }

  bool get isEmpty {
    return validators.isEmpty(this);
  }

  bool get isNotEmpty {
    return validators.isNotEmpty(this);
  }

  bool isEqualsTo(Object comparison) {
    return validators.isEqualsTo(this, comparison);
  }

  bool isIdenticalTo(Object comparison) {
    return validators.isIdenticalTo(this, comparison);
  }

  bool contains(Pattern seed) {
    return validators.contains(this, seed);
  }

  bool isInList(Iterable values) {
    return validators.isInList(this, values);
  }

  bool isLessThan(int maxLength) {
    return validators.isLessThan(this, maxLength);
  }

  bool isLessThanOrEqual(int maxLength) {
    return validators.isLessThanOrEqual(this, maxLength);
  }

  bool isGreaterThan(int minLength) {
    return validators.isGreaterThan(this, minLength);
  }

  bool isGreaterThanOrEqual(int minLength) {
    return validators.isGreaterThanOrEqual(this, minLength);
  }

  bool isBetween(int minLength, int maxLength) {
    return validators.isBetween(this, minLength, maxLength);
  }

  bool isDivisibleBy(Object number) {
    return validators.isDivisibleBy(this, number);
  }

  bool hasMatch(RegExp regex) {
    return validators.hasMatch(this, regex);
  }

  bool get isLowerCase {
    return validators.isLowerCase(this);
  }

  bool get isUpperCase {
    return validators.isUpperCase(this);
  }

  bool get isAlpha {
    return validators.isAlpha(this);
  }

  bool get isAlphanumeric {
    return validators.isAlphanumeric(this);
  }

  bool get isNumeric {
    return validators.isNumeric(this);
  }

  bool get isInt {
    return validators.isInt(this);
  }

  bool get isFloat {
    return validators.isFloat(this);
  }

  bool get isDate {
    return validators.isDate(this);
  }

  bool get isBase64 {
    return validators.isBase64(this);
  }

  bool get isJson {
    return validators.isJson(this);
  }

  bool get isEmail {
    return validators.isEmail(this);
  }

  bool get isPassword {
    return validators.isPassword(this);
  }

  bool get isUrl {
    return validators.isUrl(this);
  }

  bool get isCreditCard {
    return validators.isCreditCard(this);
  }

  bool get isUuid {
    return validators.isUuid(this);
  }

  Either<StringFailure, String?> get fpIsNull {
    return fp_validators.fpIsNull(this);
  }

  Either<StringFailure, String?> get fpIsNotNull {
    return fp_validators.fpIsNotNull(this);
  }

  Either<StringFailure, String?> get fpIsTruthy {
    return fp_validators.fpIsTruthy(this);
  }

  Either<StringFailure, String?> get fpIsFalsy {
    return fp_validators.fpIsFalsy(this);
  }

  Either<StringFailure, String> get fpIsEmpty {
    return fp_validators.fpIsEmpty(this);
  }

  Either<StringFailure, String> get fpIsNotEmpty {
    return fp_validators.fpIsNotEmpty(this);
  }

  Either<StringFailure, String> fpIsEqualsTo(Object comparison) {
    return fp_validators.fpIsEqualsTo(this, comparison);
  }

  Either<StringFailure, String> fpIsIdenticalTo(Object comparison) {
    return fp_validators.fpIsIdenticalTo(this, comparison);
  }

  Either<StringFailure, String> fpContains(Pattern seed) {
    return fp_validators.fpContains(this, seed);
  }

  Either<StringFailure, String> fpIsInList(Iterable values) {
    return fp_validators.fpIsInList(this, values);
  }

  Either<StringFailure, String> fpIsLessThan(int maxLength) {
    return fp_validators.fpIsLessThan(this, maxLength);
  }

  Either<StringFailure, String> fpIsLessThanOrEqual(int maxLength) {
    return fp_validators.fpIsLessThanOrEqual(this, maxLength);
  }

  Either<StringFailure, String> fpIsGreaterThan(int minLength) {
    return fp_validators.fpIsGreaterThan(this, minLength);
  }

  Either<StringFailure, String> fpIsGreaterThanOrEqual(int minLength) {
    return fp_validators.fpIsGreaterThanOrEqual(this, minLength);
  }

  Either<StringFailure, String> fpIsBetween(int minLength, int maxLength) {
    return fp_validators.fpIsBetween(this, minLength, maxLength);
  }

  Either<StringFailure, String> fpIsDivisibleBy(Object number) {
    return fp_validators.fpIsDivisibleBy(this, number);
  }

  Either<StringFailure, String> fpHasMatch(RegExp regex) {
    return fp_validators.fpHasMatch(this, regex);
  }

  Either<StringFailure, String> get fpIsLowerCase {
    return fp_validators.fpIsLowerCase(this);
  }

  Either<StringFailure, String> get fpIsUpperCase {
    return fp_validators.fpIsUpperCase(this);
  }

  Either<StringFailure, String> get fpIsAlpha {
    return fp_validators.fpIsAlpha(this);
  }

  Either<StringFailure, String> get fpIsAlphanumeric {
    return fp_validators.fpIsAlphanumeric(this);
  }

  Either<StringFailure, String> get fpIsNumeric {
    return fp_validators.fpIsNumeric(this);
  }

  Either<StringFailure, String> get fpIsInt {
    return fp_validators.fpIsInt(this);
  }

  Either<StringFailure, String> get fpIsFloat {
    return fp_validators.fpIsFloat(this);
  }

  Either<StringFailure, String> get fpIsDate {
    return fp_validators.fpIsDate(this);
  }

  Either<StringFailure, String> get fpIsBase64 {
    return fp_validators.fpIsBase64(this);
  }

  Either<StringFailure, String> get fpIsJson {
    return fp_validators.fpIsJson(this);
  }

  Either<StringFailure, String> get fpIsEmail {
    return fp_validators.fpIsEmail(this);
  }

  Either<StringFailure, String> get fpIsPassword {
    return fp_validators.fpIsPassword(this);
  }

  Either<StringFailure, String> get fpIsUrl {
    return fp_validators.fpIsUrl(this);
  }

  Either<StringFailure, String> get fpIsCreditCard {
    return fp_validators.fpIsCreditCard(this);
  }

  Either<StringFailure, String> get fpIsUuid {
    return fp_validators.fpIsUuid(this);
  }
}
