// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';

part 'outils_dtos.freezed.dart';
part 'outils_dtos.g.dart';

@freezed
abstract class OutilsDto implements _$OutilsDto {
  const OutilsDto._();
  const factory OutilsDto({
    @JsonKey(ignore: true) String? id,
    required String? userId,
    required String? noInventaire,
    required String designation,
    required String? dimMm1,
    required String? dimMm2,
    required String? dimAngle1,
    required String? dimAngle2,
    required String complement,
    required String emplacement,
    required String etat,
    required String? login,
    required String status,
    required String nameImg,
    required String arborescence,
    required String categorie,
  }) = _OutilsDto;

  Outils toDomain() {
    return Outils(
      id: UniqueId.fromUniqueString(id!),
      userId: userId,
      noInventaire: noInventaire,
      designation: designation,
      dimmm1: dimMm1,
      dimmm2: dimMm2,
      dimangle1: dimAngle1,
      dimangle2: dimAngle2,
      complement: complement,
      emplacement: emplacement,
      etat: etat,
      login: login,
      status: status,
      nameImg: nameImg,
      arborescence: arborescence,
      categorie: categorie,
    );
  }

  factory OutilsDto.fromJson(Map<String, dynamic>? json) =>
      _$OutilsDtoFromJson(json!);

  factory OutilsDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return OutilsDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  factory OutilsDto.fromDomain(Outils outil) {
    return OutilsDto(
      id: outil.id.getOrCrash(),
      userId: outil.userId,
      nameImg: outil.nameImg,
      dimMm1: outil.dimmm1,
      dimMm2: outil.dimmm2,
      dimAngle1: outil.dimangle1,
      dimAngle2: outil.dimangle2,
      noInventaire: outil.noInventaire,
      designation: outil.designation,
      complement: outil.complement,
      emplacement: outil.emplacement,
      etat: outil.etat,
      login: outil.login,
      status: outil.status,
      arborescence: outil.arborescence,
      categorie: outil.categorie,
    );
  }
}
