import 'package:dartz_validators/dartz_validators.dart';

void main() {
  final emptyList = [];
  final firstList = [5, 2, 3, 1, 29, 45, 23, 16];
  final secondList = [5, 2, 3, 23, 16];

  if (emptyList.isEmpty) {
    print('The iterable is empty');
  }

  if (firstList.isNotEmpty) {
    print('The iterable is not empty');
  }

  if (firstList.isEqualsTo(secondList)) {
    print('The first iterable is equals to the second one');
  }

  firstList.fpIsTruthy.fold(
    (_) => print('The iterable is not truthy'),
    (_) => print('The iterable is truthy'),
  );
}
