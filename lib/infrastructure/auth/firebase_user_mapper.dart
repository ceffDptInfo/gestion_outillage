import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:gestion_outillage/domain/auth/value_objects.dart';
import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async {
    return User(
      id: UniqueId.fromUniqueString(uid),
      emailAddress: EmailAddress(email!),
    );
  }
}
