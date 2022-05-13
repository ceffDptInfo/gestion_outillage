// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outils_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutilsDto _$$_OutilsDtoFromJson(Map<String, dynamic> json) => _$_OutilsDto(
      userId: json['userId'] as String?,
      noInventaire: json['noInventaire'] as String?,
      designation: json['designation'] as String,
      dimMm1: json['dimMm1'] as String?,
      dimMm2: json['dimMm2'] as String?,
      dimAngle1: json['dimAngle1'] as String?,
      dimAngle2: json['dimAngle2'] as String?,
      complement: json['complement'] as String,
      emplacement: json['emplacement'] as String,
      etat: json['etat'] as String,
      login: json['login'] as String?,
      status: json['status'] as String,
      nameImg: json['nameImg'] as String,
      arborescence: json['arborescence'] as String,
      categorie: json['categorie'] as String,
    );

Map<String, dynamic> _$$_OutilsDtoToJson(_$_OutilsDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'noInventaire': instance.noInventaire,
      'designation': instance.designation,
      'dimMm1': instance.dimMm1,
      'dimMm2': instance.dimMm2,
      'dimAngle1': instance.dimAngle1,
      'dimAngle2': instance.dimAngle2,
      'complement': instance.complement,
      'emplacement': instance.emplacement,
      'etat': instance.etat,
      'login': instance.login,
      'status': instance.status,
      'nameImg': instance.nameImg,
      'arborescence': instance.arborescence,
      'categorie': instance.categorie,
    };
