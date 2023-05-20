import 'package:dartz_validators/dartz_validators.dart';

void main() {
  final emptyMap = {};
  final firstMap = {'firstName': 'John', 'job': 'Developer', 'age': 32};
  final secondMap = {'firstName': 'Lisa', 'job': 'Developer', 'age': 25};

  if (emptyMap.isEmpty) {
    print('The map is empty');
  }

  if (firstMap.isNotEmpty) {
    print('The map is not empty');
  }

  if (firstMap.isEqualsTo(secondMap)) {
    print('The first map is equals to the second one');
  }

  firstMap.fpIsTruthy.fold(
    (_) => print('The map is not truthy'),
    (_) => print('The map is truthy'),
  );
}
