import 'package:dartz/dartz.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateDesignation(String input) {
  const emailRegex = r"^[a-zA-Z\s]*$";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidDesignation(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateComplement(String input) {
  const emailRegex = r"^[a-zA-Z\s]*$";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidComplement(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

//8 caractères : 1 minuscule, 1 majuscule, 1 chiffre, 1 caractère spécial
Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$";
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
