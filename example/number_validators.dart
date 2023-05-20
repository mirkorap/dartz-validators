import 'package:dartz_validators/dartz_validators.dart';

void main() {
  final firstNum = 25;
  final secondNum = 32;

  if (firstNum.isEven) {
    print('The number is even');
  }

  if (firstNum.isFalsy) {
    print('The number is falsy');
  }

  if (firstNum.isGreaterThan(secondNum)) {
    print('The first number is equals to the second one');
  }

  secondNum.fpIsTruthy.fold(
    (_) => print('The number is not truthy'),
    (_) => print('The number is truthy'),
  );

  secondNum.fpIsPrimary.fold(
    (_) => print('The number is not primary'),
    (_) => print('The number is primary'),
  );
}
