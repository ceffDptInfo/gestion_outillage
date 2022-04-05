import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Photos extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Factory constructeur --> instanciation de l'objet
  factory Photos(String input, bool isStation) {
    // if (isStation) {
    //   return Photos._(validateStationQRCode(input));
    // } else {
    //   return Photos._(validateDriverQRCode(input));
    // }
    return Photos(input, isStation);
  }

  //Constructeur privé
  const Photos._(this.value);
}
