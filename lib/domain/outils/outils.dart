import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';

part 'outils.freezed.dart';

@freezed
class Outils with _$Outils {
  const Outils._();

  const factory Outils({
    required UniqueId id,
    required String? userId,
    required String? noInventaire,
    required String designation,
    required String? dimmm1,
    required String? dimmm2,
    required String? dimangle1,
    required String? dimangle2,
    required String complement,
    required String emplacement,
    required String etat,
    required String? login,
    required String status,
    required String nameImg,
    required String arborescence,
    required String categorie,
  }) = _Outils;

  factory Outils.fromJson(Map<String, dynamic> json) {
    return Outils(
      id: UniqueId(),
      userId: "",
      noInventaire: json['no_inventaire'],
      designation: json['designation'],
      dimmm1: json['dim_mm_1'],
      dimmm2: json['dim_mm_2'],
      dimangle1: json['dim_angle_1'],
      dimangle2: json['dim_angle_2'],
      complement: json['complement'],
      emplacement: json['emplacement'],
      etat: json['etat'],
      login: json['login'],
      status: json['status'],
      nameImg: json['name_img'],
      arborescence: json['arborescence'],
      categorie: json['categorie'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['no_inventaire'] = noInventaire;
    data['designation'] = designation;
    data['dim_mm_1'] = dimmm1;
    data['dim_mm_2'] = dimmm2;
    data['dim_angle_1'] = dimangle1;
    data['dim_angle_2'] = dimangle2;
    data['complement'] = complement;
    data['emplacement'] = emplacement;
    data['etat'] = etat;
    data['login'] = login;
    data['status'] = status;
    data['name_img'] = nameImg;
    data['arborescence'] = arborescence;
    data['categorie'] = categorie;
    return data;
  }
}
