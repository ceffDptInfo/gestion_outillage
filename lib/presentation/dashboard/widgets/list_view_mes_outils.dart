import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';

import '../../../domain/outils/outils.dart';
import '../../core/card_item_outils.dart';

class ListViewMesOutils extends StatelessWidget {
  final KtList<Outils> outils;
  final double width;
  final double height;
  final String title;
  final FirebaseAuth user;
  const ListViewMesOutils(
      {Key? key,
      required this.outils,
      required this.width,
      required this.height,
      required this.title,
      required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: width * 0.05),
          // color: Colors.blue,
          // width: width * 0.1,
          height: height * 0.07,
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 45, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        SizedBox(
          // color: Colors.green,
          // width: 200,
          height: MediaQuery.of(context).size.height * 0.36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: outils.size,
            itemBuilder: (context, index) {
              return title == 'Mes outils actuels'
                  ? outils[index].status.toString() == 'Emprunté'
                      ? CardItemOuils(outil: outils[index], user: user)
                      : Container()
                  : CardItemOuils(outil: outils[index], user: user);
            },
          ),
        ),
      ],
    );
  }
}
