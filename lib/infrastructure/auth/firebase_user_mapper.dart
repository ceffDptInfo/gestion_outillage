import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  Future<User> toDomain() async {
    final userInfo =
        await FirebaseFirestore.instance.collection('users').doc(uid).get()
          ..data();

  //   var userInfoString = userInfo['prenom'].toString();
  //   final firstName =
  //       userInfoString[0].toUpperCase() + userInfoString.substring(1);
  //   userInfoString = userInfo['nom'].toString();
  //   final name = userInfoString[0].toUpperCase() + userInfoString.substring(1);

    return User(
      id: UniqueId.fromUniqueString(uid),
      // firstName: firstNa"me,
      // name: name,
      // driverLicense: userInfo['permis'].toString() == '0' ? 0 : 1,
    );
  }
}
