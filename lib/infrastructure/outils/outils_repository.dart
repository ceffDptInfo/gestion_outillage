import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:gestion_outillage/domain/auth/i_auth_facade.dart';
import 'package:gestion_outillage/domain/core/errors.dart';
import 'package:gestion_outillage/domain/outils/i_outils_repository.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'outils_dtos.dart';

@LazySingleton(as: IOutilsRepository)
class Outilsrepository implements IOutilsRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Outilsrepository(this._firestore);

  Future<List<OutilsDto>> fetchOutilsByMicro() async {
    String url = "https://monceff.cidisi.ch/json/outillage_micro.json.php";
    final response = await http.get(Uri.parse(url));
    List<OutilsDto> list = [];
    if (response.statusCode == 200) {
      String responsebody = response.body;
      var jsonresponse = json.decode(responsebody);
      var outilsResponse =
          jsonresponse.map((outilsI) => OutilsDto.fromJson(outilsI)).toList();
      outilsResponse.forEach((outils) {
        list.add(outils);
      });
      return list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  Future<List<OutilsDto>> fetchOutils() async {
    const url = "https://monceff.cidisi.ch/json/outillage.json.php";
    final response = await http.get(Uri.parse(url));
    List<OutilsDto> list = [];

    // print("LISTAAAAAAAAA $response");
    if (response.statusCode == 200) {
      String responsebody = response.body;
      var jsonresponse = json.decode(responsebody);
      var outilsResponse =
          jsonresponse.map((outilsI) => OutilsDto.fromJson(outilsI)).toList();
      outilsResponse.forEach((outils) {
        list.add(outils);
      });

      return list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  Future<List<OutilsDto>> fetchOutilsByTiroirAndCat(
      String tiroir, String query) async {
    String url = "https://monceff.cidisi.ch/json/outillage_by_tiroir" +
        tiroir +
        "_" +
        query +
        ".php";
    final response = await http.get(Uri.parse(url));
    List<OutilsDto> list = [];
    if (response.statusCode == 200) {
      String responsebody = response.body;
      var jsonresponse = json.decode(responsebody);
      var outilsResponse =
          jsonresponse.map((outilsI) => OutilsDto.fromJson(outilsI)).toList();
      outilsResponse.forEach((outils) {
        list.add(outils);
      });
      // print(responsebody);
      return list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  @override
  Future<List<OutilsDto>> fetchOutilsTiroir1() async {
    const url = "https://monceff.cidisi.ch/json/outillage_by_tiroir1.php";
    final response = await http.get(Uri.parse(url));
    List<OutilsDto> list = [];
    if (response.statusCode == 200) {
      String responsebody = response.body;
      var jsonresponse = json.decode(responsebody);
      var outilsResponse =
          jsonresponse.map((outilsI) => OutilsDto.fromJson(outilsI)).toList();
      outilsResponse.forEach((outils) {
        list.add(outils);
      });
      // print(responsebody);
      return list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  @override
  Future<List<OutilsDto>> fetchOutilsTiroir4() async {
    const url = "https://monceff.cidisi.ch/json/outillage_by_tiroir4.php";
    final response = await http.get(Uri.parse(url));
    List<OutilsDto> list = [];
    if (response.statusCode == 200) {
      String responsebody = response.body;
      var jsonresponse = json.decode(responsebody);
      var outilsResponse =
          jsonresponse.map((outilsI) => OutilsDto.fromJson(outilsI)).toList();
      outilsResponse.forEach((outils) {
        list.add(outils);
      });
      // print(responsebody);
      return list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  Future<List<OutilsDto>> fetchOutilsCategory() async {
    const url = "https://monceff.cidisi.ch/json/outillage_by_cat.json.php";
    final response = await http.get(Uri.parse(url));
    List<OutilsDto> list = [];
    if (response.statusCode == 200) {
      String responsebody = response.body;
      var jsonresponse = json.decode(responsebody);
      var outilsResponse =
          jsonresponse.map((outilsI) => OutilsDto.fromJson(outilsI)).toList();
      outilsResponse.forEach((outils) {
        list.add(outils);
      });
      return list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  @override
  Stream<Either<OutilsFailure, KtList<Outils>>> watchBorrowedOutils() async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userDoc = user.id.getOrCrash();

    yield* _firestore
        .collection("users/$userDoc/outils_empruntées")
        .where("status", isEqualTo: "Emprunté")
        .snapshots()
        .map(
          (snapshot) => right<OutilsFailure, KtList<Outils>>(
            snapshot.docs
                .map((doc) => OutilsDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (e, s) {
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION DENIED')) {
          return left(const OutilsFailure.insufficientPermission());
        } else {
          return left(
            const OutilsFailure.unexpected(),
          );
        }
      },
    );
  }

  @override
  Future<Either<OutilsFailure, KtList<Outils>>> watchAllOutils() async {
    const url = "https://monceff.cidisi.ch/json/outillage.json.php";
    try {
      final response = await http.get(Uri.parse(url));
      List<Outils> list = [];
      if (response.statusCode == 200) {
        String responsebody = response.body;
        dynamic jsonresponse = json.decode(responsebody);
        dynamic outilsResponse =
            jsonresponse.map((outilsI) => Outils.fromJson(outilsI)).toList();
        outilsResponse.forEach((outils) {
          list.add(outils);
        });
      }
      return right(list.toImmutableList());
    } on FormatException catch (e) {
      if (e.message.contains('PERMISSION DENIED')) {
        return left(const OutilsFailure.insufficientPermission());
      } else {
        return left(const OutilsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<OutilsFailure, Unit>> create(Outils outil) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userDoc = user.id.getOrCrash();
    try {
      final outilDto = OutilsDto.fromDomain(outil);

      await _firestore
          .collection("users/$userDoc/outils_empruntées/")
          .doc(outilDto.id)
          .set(outilDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(
          const OutilsFailure.insufficientPermission(),
        );
      } else {
        return left(
          const OutilsFailure.unexpected(),
        );
      }
    }
  }

  @override
  Future<Either<OutilsFailure, Unit>> delete(Outils outil) async {
    try {
      final outilDto = OutilsDto.fromDomain(outil);
      final userOption = await getIt<IAuthFacade>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());
      final userDoc = user.id.getOrCrash();
      await _firestore
          .collection("users/$userDoc/outils_empruntées/")
          .doc(outilDto.id)
          .delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(const OutilsFailure.insufficientPermission());
      } else {
        return left(const OutilsFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<OutilsFailure, Unit>> update(Outils outil) async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userDoc = user.id.getOrCrash();
    try {
      final outilDto = OutilsDto.fromDomain(outil);
      await _firestore
          .collection("users/$userDoc/outils_empruntées/")
          .doc(outilDto.id)
          .set(outilDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(const OutilsFailure.insufficientPermission());
      } else {
        return left(const OutilsFailure.unexpected());
      }
    }
  }
}
