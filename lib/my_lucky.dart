import 'dart:math';
import 'dart:io';

class Lucky {
  late int _randomNumber; //ChatGPT says it's a good practice to store the value in a private field and provide a getter method.

  Lucky() {
    final minEnv = Platform.environment['MIN'];
    final maxEnv = Platform.environment['MAX'];

    if (minEnv != null && maxEnv != null) {
      final min = int.tryParse(minEnv);
      final max = int.tryParse(maxEnv);

      if(min != null && max!= null && min < max){
      final random = Random();
      _randomNumber = min + random.nextInt(max - min + 1);
      } else {
        throw ArgumentError('MIN and MAX environment variables are not valid.');
      }

    } else {
       throw ArgumentError('MIN and MAX environment variables are not set.');
    }
  }

  int get randomNumber=> _randomNumber;
}