import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';

part 'outils_dtos.freezed.dart';
part 'outils_dtos.g.dart';

//Dtos json -> map
// nom -> correspondant aux ceux du json

@freezed
abstract class OutilsDto implements _$OutilsDto {
  const OutilsDto._();

  const factory OutilsDto({
    // ignore: invalid_annotation_target
    @JsonKey(ignore: true) String? id,
    required String? userId,
    required String? noInventaire,
    required String designation,
    // ignore: non_constant_identifier_names
    required String? dim_mm_1,
    // ignore: non_constant_identifier_names
    required String? dim_mm_2,
    // ignore: non_constant_identifier_names
    required String? dim_angle_1,
    // ignore: non_constant_identifier_names
    required String? dim_angle_2,
    required String complement,
    required String emplacement,
    required String etat,
    required String? login,
    required String status,
    // ignore: non_constant_identifier_names
    required String name_img,
    // ignore: non_constant_identifier_names
    required String arborescence,
    required String categorie,
  }) = _OutilsDto;

  Outils toDomain() {
    return Outils(
      id: UniqueId.fromUniqueString(id!),
      userId: userId,
      noInventaire: noInventaire,
      designation: designation,
      dimmm1: dim_mm_1,
      dimmm2: dim_mm_2,
      dimangle1: dim_angle_1,
      dimangle2: dim_angle_2,
      complement: complement,
      emplacement: emplacement,
      etat: etat,
      login: login,
      status: status,
      nameImg: name_img,
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
      name_img: outil.nameImg,
      dim_mm_1: outil.dimmm1,
      dim_mm_2: outil.dimmm2,
      dim_angle_1: outil.dimangle1,
      dim_angle_2: outil.dimangle2,
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
