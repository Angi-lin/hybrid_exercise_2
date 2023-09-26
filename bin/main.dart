import 'package:my_cli_app/my_lucky.dart';
import 'dart:io';

void main(List<String> names) {
  try{
    if (names.isEmpty){
      throw ArgumentError('Please provide at least one name.');
    }
    for ( String name in names){
        Lucky lucky = Lucky();
        print("Hello ${name[0].toUpperCase() + name.substring(1)}, your lucky number is ${lucky.randomNumber}");
    }
  } catch (e){
    print(e);
  }
 
}




