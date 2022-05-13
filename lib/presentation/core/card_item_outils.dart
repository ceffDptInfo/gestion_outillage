import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';

import '../outils_detail/outils_mesure_list_detail_page.dart';

class CardItemOuils extends StatelessWidget {
  final Outils outil;
  final FirebaseAuth user;

  const CardItemOuils({
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
          builder: (context) => OutilsMesureListDetailPage(outil, user),
        ),
      ),
      child: Card(
        semanticContainer: true,
        margin: const EdgeInsets.all(10),
        child: Container(
          foregroundDecoration: RotatedCornerDecoration(
            color: outil.status == "Disponible" ? Colors.green : Colors.red,
            geometry: const BadgeGeometry(
              width: 58,
              height: 58,
            ),
            labelInsets: const LabelInsets(baselineShift: 0),
            textSpan: TextSpan(
              text: outil.status,
              style: const TextStyle(
                fontSize: 10,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Align(
                  child: ClipRRect(
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
                  width: 150,
                  height: 64,
                  child: Column(
                    children: [
                      Flexible(
                        child: Text(outil.designation + "\n" + outil.complement,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      const Divider(),
                      outil.dimmm1 != "0" || outil.dimmm2 != "0"
                          ? Text(
                              "Dim [mm]: " +
                                  outil.dimmm1! +
                                  " / " +
                                  outil.dimmm2!,
                            )
                          : Container(),
                      outil.dimangle1 != "0" || outil.dimangle2 != "0"
                          ? Text(
                              "Dim angle: " +
                                  outil.dimangle1! +
                                  " / " +
                                  outil.dimangle2!,
                            )
                          : Container(),
                    ],
                  ),
                ),
              ),
              if (user.currentUser!.email.toString().contains("prof") ||
                  user.currentUser == null) ...[
                //afficher l'état de l'outil sur la card
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 120,
                    height: 30,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        color: outil.etat == "Usagé"
                            ? Colors.orange
                            : Colors.green,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              outil.etat == "Usagé"
                                  ? "Non-fonctionnel"
                                  : "Fonctionnel",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
