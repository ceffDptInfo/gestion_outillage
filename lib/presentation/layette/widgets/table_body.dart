import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../domain/outils/outils.dart';
import '../../outils_detail/outils_mesure_list_detail_page.dart';

class TableBody extends StatelessWidget {
  final Outils outil;
  final FirebaseAuth user;
  const TableBody({Key? key, required this.outil, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OutilsMesureListDetailPage(outil, user))),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border:
            const TableBorder(top: BorderSide(color: Colors.white, width: 1)),
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.designation,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.dimmm1 == "0" && outil.dimmm2 == "0"
                    ? "   -  "
                    : outil.dimmm1! + " / " + outil.dimmm2! + " mm",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.dimangle1 == "0" && outil.dimangle2 == "0"
                    ? "   -   "
                    : outil.dimangle1! + " / " + outil.dimangle2! + "°",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.complement,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.emplacement,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.etat,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                outil.status,
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
