import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:gestion_outillage/domain/outils/i_outils_repository.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import 'outils_dtos.dart';

@LazySingleton(as: IOutilsRepository)
class Outilsrepository implements IOutilsRepository {
  // final FirebaseFirestore _firestore;

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
  Future<Either<OutilsFailure, Unit>> create(Outils outils) {
    try {
      // final outilDoc = await _fi
    } on FirebaseException catch (e) {}
    throw UnimplementedError();
  }

  @override
  Future<Either<OutilsFailure, Unit>> delete(Outils outils) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<OutilsFailure, Unit>> update(Outils outils) {
    // TODO: implement update
    throw UnimplementedError();
  }

  Stream<List<OutilsDto>> fetchAllOutils() async* {
    const url = "https://monceff.cidisi.ch/json/outillage.json.php";

    // var response = await Dio().get

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
      // print(list);
      yield list;
    } else {
      throw Exception('Failed to load outils');
    }
  }

  @override
  Stream<Either<OutilsFailure, Stream<List<OutilsDto>>>>
      watchAllOutils() async* {
    try {
      final _fetchAllOutils = fetchAllOutils();
      // print(_fetchAllOutils);
      yield right(_fetchAllOutils);
    } on FormatException catch (_) {
      yield left(const OutilsFailure.unexpected());
    }
  }
}
