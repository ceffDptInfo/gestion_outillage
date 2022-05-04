import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/application/auth/auth_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/user_outils_watcher/user_outils_watcher_bloc.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:kt_dart/kt.dart';

// ignore: must_be_immutable
class DashboardForm extends StatelessWidget {
  FirebaseAuth auth;
  DashboardForm({
    Key? key,
    required this.auth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<UserOutilsWatcherBloc, UserOutilsWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadFailure: (value) => const Center(
            child: Text("Erreur de chargement"),
          ),
          loadInProgress: (value) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (outils) {
            return Row(
              children: [
                Expanded(
                  child: SafeArea(
                    child: Scaffold(
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            listViewMesOutils(context, outils.listOutils, width,
                                height, 'Mes outils empruntés', auth),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }

  Widget listViewMesOutils(context, KtList<Outils> outils, double width,
          double height, String title, user) =>
      Column(
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
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
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

Widget listInformation(
  String title,
  String info,
) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.fill,
          child: Text(
            title,
            // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          width: 40,
        ),
        Text(
          info,
          style: const TextStyle(fontSize: 25, color: Colors.black),
          textWidthBasis: TextWidthBasis.longestLine,
        ),
      ],
    );

Widget notificationCard(
        String title, String info, String date, context, color) =>
    SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width / 3,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Icon(
                    Icons.check_circle,
                    size: 32,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                info != ''
                    ? Text(
                        info,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                    : Container(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Text(
                date,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
