import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';

import '../outils_detail/outils_mesure_list_detail_page.dart';

// ignore: must_be_immutable
class CardItemOuils extends StatelessWidget {
  Outils outil;
  FirebaseAuth user;

  CardItemOuils({
    Key? key,
    required this.outil,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutilsMesureListDetailPage(
            outil,
            user
          ),
        ),
      ),
      onLongPress: () {
        // print('save');
        // saveData(index);
      },
      // child:
      // Container(
      // direction: DismissDirection.down,
      // background: Container(
      //   padding: const EdgeInsets.only(right: 20.0),
      //   alignment: Alignment.topCenter,
      //   color: statut == 'Emprunté' ? Colors.green : Colors.red,
      //   child: Text(
      //     statut == 'Disponible' ? 'L\'emprunter' : 'Le rendre',
      //     textAlign: TextAlign.right,
      //     style: const TextStyle(color: Colors.white, fontSize: 24),
      //   ),
      // ),
      // key: Key(index.toString()),
      // onDismissed: (direction) {
      //   statut == 'Emprunté'
      //       ? ScaffoldMessenger.of(context).showSnackBar(
      //           SnackBar(content: Text(designation + ' rendu')))
      //       : ScaffoldMessenger.of(context).showSnackBar(
      //           SnackBar(content: Text(designation + ' emprunté')));
      // },
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
            color: outil.status == "Disponible" ? Colors.green : Colors.red,
            geometry: const BadgeGeometry(
              width: 58,
              height: 58,
              // cornerRadius: 20,
            ),
            labelInsets: const LabelInsets(baselineShift: 0),
            textSpan: TextSpan(
              text: outil.status,
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
                        "assets/images/image_outils/" + outil.nameImg,
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
                        child: Text(outil.designation + "\n" + outil.complement,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      // SizedBox(
                      //   height: 16,
                      // ),
                      const Divider(),
                      outil.dimmm1 != "0" || outil.dimmm2 != "0"
                          ? Text(
                              "Dim [mm]: " + outil.dimmm1! + " / " + outil.dimmm2!,
                            )
                          : Container(),
                      outil.dimangle1 != "0" || outil.dimangle2 != "0"
                          ? Text(
                              "Dim angle: " + outil.dimangle1! + " / " + outil.dimangle2!,
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
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      color: outil.etat == "Usagé" ? Colors.orange : Colors.green,
                      child: Center(
                        child: Text(
                          outil.etat,
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
    );
  }

  Widget returnCardItemOutils(Outils outil, FirebaseAuth user) => CardItemOuils(
        outil: outil,
        user: user,
      );
}
