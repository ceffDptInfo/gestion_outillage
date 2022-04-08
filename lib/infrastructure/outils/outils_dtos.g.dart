// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outils_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutilsDto _$$_OutilsDtoFromJson(Map<String, dynamic> json) => _$_OutilsDto(
      userId: json['userId'] as String?,
      noInventaire: json['noInventaire'] as String?,
      designation: json['designation'] as String,
      dim_mm_1: json['dim_mm_1'] as String?,
      dim_mm_2: json['dim_mm_2'] as String?,
      dim_angle_1: json['dim_angle_1'] as String?,
      dim_angle_2: json['dim_angle_2'] as String?,
      complement: json['complement'] as String,
      emplacement: json['emplacement'] as String,
      etat: json['etat'] as String,
      login: json['login'] as String?,
      status: json['status'] as String,
      name_img: json['name_img'] as String,
      arborescence: json['arborescence'] as String,
      categorie: json['categorie'] as String,
    );

Map<String, dynamic> _$$_OutilsDtoToJson(_$_OutilsDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'noInventaire': instance.noInventaire,
      'designation': instance.designation,
      'dim_mm_1': instance.dim_mm_1,
      'dim_mm_2': instance.dim_mm_2,
      'dim_angle_1': instance.dim_angle_1,
      'dim_angle_2': instance.dim_angle_2,
      'complement': instance.complement,
      'emplacement': instance.emplacement,
      'etat': instance.etat,
      'login': instance.login,
      'status': instance.status,
      'name_img': instance.name_img,
      'arborescence': instance.arborescence,
      'categorie': instance.categorie,
    };
