import 'package:dartz_validators/dartz_validators.dart';

void main() {
  final date = DateTime.now().toString();
  final email = 'example@gmail.com';
  final creditCard = '4556586089339178';
  final firstJob = 'Developer';
  final secondJob = 'Teacher';

  if (date.isDate) {
    print('The string is a valid date');
  }

  if (email.isEmail) {
    print('The string is a valid email');
  }

  if (creditCard.isCreditCard) {
    print('The string is a valid credit card number');
  }

  firstJob.fpIsEqualsTo(secondJob).fold(
    (_) => print('The two strings are not equal'),
    (_) => print('The two strings are equal'),
  );

  firstJob.fpIsAlpha.fold(
    (_) => print('The string is not alphanumeric'),
    (_) => print('The string is alphanumeric'),
  );
}
