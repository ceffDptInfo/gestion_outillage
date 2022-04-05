import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../outils_detail/outils_mesure_list_detail_page.dart';

// ignore: must_be_immutable
class CardItemOuils extends StatelessWidget {
  // var snapshot;
  int index;
  BuildContext context;
  // String id;
  String noInventaire;
  String etat;
  String designation;
  String complement;
  String emplacement;
  String statut;
  String dimangle1;
  String dimangle2;
  String dimmm1;
  String dimmm2;
  String nameImg;
  String arborescence;
  String categorie;
  String login;

  CardItemOuils({
    Key? key,
    // required this.snapshot,
    required this.index,
    required this.context,
    // required this.id,
    required this.noInventaire,
    required this.etat,
    required this.designation,
    required this.complement,
    required this.emplacement,
    required this.statut,
    required this.dimangle1,
    required this.dimangle2,
    required this.dimmm1,
    required this.dimmm2,
    required this.nameImg,
    required this.arborescence,
    required this.categorie,
    required this.login,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OutilsMesureListDetailPage(
                  designation,
                  complement,
                  emplacement,
                  etat,
                  statut,
                  index,
                  dimangle1,
                  dimangle2,
                  dimmm1,
                  dimmm2,
                  nameImg,
                  arborescence,
                  categorie,
                ),
              ),
            ),
        onLongPress: () {
          // print('save');
          // saveData(index);
        },
        child: Dismissible(
          direction: DismissDirection.down,
          background: Container(
            padding: const EdgeInsets.only(right: 20.0),
            alignment: Alignment.topCenter,
            color: statut == 'Emprunté' ? Colors.green : Colors.red,
            child: Text(
              statut == 'Disponible' ? 'L\'emprunter' : 'Le rendre',
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          key: Key(index.toString()),
          onDismissed: (direction) {
            statut == 'Emprunté'
                ? ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(designation + ' rendu')))
                : ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(designation + ' emprunté')));
          },
          child: Card(
            // elevation: 6.0,
            semanticContainer: true,
            // elevation: 20,
            // shape: RoundedRectangleBorder(
            //   // side: BorderSide(color: Colors.black),
            //   borderRadius: BorderRadius.circular(20),
            // ),
            margin: const EdgeInsets.all(10),
            child: Container(
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(8))),
              // height: MediaQuery.of(context).size.height * 0.3,
              foregroundDecoration: RotatedCornerDecoration(
                color: statut == "Disponible" ? Colors.green : Colors.red,
                geometry: const BadgeGeometry(
                  width: 58,
                  height: 58,
                  // cornerRadius: 20,
                ),
                labelInsets: const LabelInsets(baselineShift: 0),
                textSpan: TextSpan(
                  text: statut,
                  style: const TextStyle(
                    fontSize: 10,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    // backgroundColor: Colors.red,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Center(
                    child: Align(
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(16.0),
                        // borderRadius: const BorderRadius.only(
                        //   topLeft: Radius.circular(20),
                        //   topRight: Radius.circular(20),
                        // ),
                        child: FittedBox(
                          child: Image.asset(
                            "assets/images/image_outils/" + nameImg,
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    child: SizedBox(
                      // margin: EdgeInsets.only(top: 10),
                      // color: Colors.blue,
                      width: 150,
                      height: 64,
                      // child: FittedBox(
                      // alignment: Alignment.center,
                      // fit: BoxFit.fitWidth,
                      child: Column(
                        children: [
                          Flexible(
                            child: Text(designation + "\n" + complement,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ),
                          // SizedBox(
                          //   height: 16,
                          // ),
                          const Divider(),
                          dimmm1 != "0" || dimmm2 != "0"
                              ? Text(
                                  "Dim [mm]: " + dimmm1 + " / " + dimmm2,
                                )
                              : Container(),
                          dimangle1 != "0" || dimangle2 != "0"
                              ? Text(
                                  "Dim angle: " + dimangle1 + " / " + dimangle2,
                                )
                              : Container(),
                        ],
                      ),
                      // ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 80,
                      height: 30,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          color: etat == "Usagé" ? Colors.orange : Colors.green,
                          child: Center(
                            child: Text(
                              etat,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              // textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget returnCardItemOutils(var snapshot) => CardItemOuils(
        // snapshot: snapshot,
        index: index,
        context: context,
        // id: UniqueId.fromUniqueString(snapshot.data![index].id).toString(),
        login: snapshot.data![index].login,
        noInventaire: snapshot.data![index].noInventaire.toString(),
        etat: snapshot.data![index].etat.toString(),
        designation: snapshot.data![index].designation.toString(),
        complement: snapshot.data![index].complement.toString(),
        emplacement: snapshot.data![index].emplacement.toString(),
        statut: snapshot.data![index].status.toString(),
        dimangle1: snapshot.data![index].dim_angle_1.toString(),
        dimangle2: snapshot.data![index].dim_angle_2.toString(),
        dimmm1: snapshot.data![index].dim_mm_1.toString(),
        dimmm2: snapshot.data![index].dim_mm_2.toString(),
        nameImg: snapshot.data![index].name_img.toString(),
        arborescence: snapshot.data![index].arborescence.toString(),
        categorie: snapshot.data![index].categorie.toString(),
      );
}
