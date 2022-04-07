import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/auth/value_objects.dart';
import '../core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required EmailAddress? emailAddress,
    // required String name,
    // required int driverLicense,
  }) = _User;
}
