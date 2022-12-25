import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_failure.freezed.dart';

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.invalidString(Object? failedValue) = InvalidString;

  const factory StringFailure.nullable(String? failedValue) = Nullable;

  const factory StringFailure.notNullable(String? failedValue) = NotNullable;

  const factory StringFailure.notTruthy(String? failedValue) = NotTruthy;

  const factory StringFailure.notFalsy(String? failedValue) = NotFalsy;

  const factory StringFailure.empty(String failedValue) = Empty;

  const factory StringFailure.notEmpty(String failedValue) = NotEmpty;

  const factory StringFailure.notEqualsTo(String failedValue, Object comparison) = NotEqualsTo;

  const factory StringFailure.notIdenticalTo(String failedValue, Object comparison) = NotIdenticalTo;

  const factory StringFailure.notContains(String failedValue, Pattern seed) = NotContains;

  const factory StringFailure.notInList(String failedValue, Iterable values) = NotInList;

  const factory StringFailure.exceedingLength(String failedValue, int maxLength) = ExceedingLength;

  const factory StringFailure.tooShortLength(String failedValue, int minLength) = TooShortLength;

  const factory StringFailure.notDivisibleBy(String failedValue, Object number) = NotDivisibleBy;

  const factory StringFailure.unmatchedRegExp(String failedValue, RegExp regex) = UnmatchedRegExp;

  const factory StringFailure.notInLowerCase(String failedValue) = NotInLowerCase;

  const factory StringFailure.notInUpperCase(String failedValue) = NotInUpperCase;

  const factory StringFailure.invalidAlpha(String failedValue) = InvalidAlpha;

  const factory StringFailure.invalidAlphanumeric(String failedValue) = InvalidAlphanumeric;

  const factory StringFailure.invalidNumeric(String failedValue) = InvalidNumeric;

  const factory StringFailure.invalidInt(String failedValue) = InvalidInt;

  const factory StringFailure.invalidFloat(String failedValue) = InvalidFloat;

  const factory StringFailure.invalidDate(String failedValue) = InvalidDate;

  const factory StringFailure.invalidBase64(String failedValue) = InvalidBase64;

  const factory StringFailure.invalidJson(String failedValue) = InvalidJson;

  const factory StringFailure.invalidEmail(String failedValue) = InvalidEmail;

  const factory StringFailure.invalidPassword(String failedValue) = InvalidPassword;

  const factory StringFailure.invalidUrl(String failedValue) = InvalidUrl;

  const factory StringFailure.invalidCreditCard(String failedValue) = InvalidCreditCard;

  const factory StringFailure.invalidUuid(String failedValue) = InvalidUuid;
}
