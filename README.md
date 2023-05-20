# Dartz Validators

Dartz Validators is a set of extension methods to validate strings, numbers, iterables and maps.

## Usage

The package can be used to validate strings, numbers, iterables... in a simple way.  
To validate values you can use the extension methods provided by the package:

* **IterableValidators:** a list of validators to validate iterables;
* **MapValidators:** a list of validators to validate maps;
* **NumberValidators:** a list of validators to validate numbers;
* **StringValidators:** a list of validators to validate strings;

#### A basic example

    import 'package:dartz_validators/dartz_validators.dart';  
    
    final email = 'example@gmail.com';
    if (email.isEmail) {
      print('The string is a valid email');
    }
     
    final firstNum = 25;
    if (firstNum.isEven) {
      print('The number is even');
    }
      
    final emptyMap = {};
    emptyMap.fpIsEmpty.fold(
      (_) => print('The map is not empty'),
      (_) => print('The map is empty'),
    );
      
    final firstList = [5, 2, 3, 1, 29, 45, 23, 16];
    final secondList = [5, 2, 3, 23, 16];
    if (firstList.isEqualsTo(secondList)) {
      print('The first iterable is equals to the second one');
    }

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
Code released under the [MIT License](https://github.com/mirkorap/dartz-validators/blob/main/LICENSE).