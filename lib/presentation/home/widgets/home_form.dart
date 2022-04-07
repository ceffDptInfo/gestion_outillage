import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/outils_watcher_bloc.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/infrastructure/core/outilsData.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';
import 'package:gestion_outillage/presentation/categories/categories_page.dart';
import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:gestion_outillage/presentation/routes/router.gr.dart';
import 'package:gestion_outillage/presentation/tiroir/tiroir_page.dart';
import 'package:kt_dart/kt.dart';
import 'package:auto_route/auto_route.dart';

import '../../../application/auth/auth_bloc.dart';

class HomeStartForm extends StatelessWidget {
  FirebaseAuth user;
  HomeStartForm(this.user);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final FirebaseAuth _auth = FirebaseAuth.instance;
    return BlocBuilder<OutilsWatcherBloc, OutilsWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadFailure: (value) => const Center(
            child: Text("Erreur de chargement"),
          ),
          loadInProgress: (value) {
            // print("non");
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loadSuccess: (outils) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _auth.currentUser != null
                          ? PopupMenuButton(
                              onSelected: (value) {
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.signedOut());
                              },
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: Row(
                                    children: const [
                                      Icon(Icons.logout_rounded),
                                      Text("Se déconnecter"),
                                    ],
                                  ),
                                  value: 2,
                                ),
                              ],
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    print("login");
                                    context.router.replace(const SignInRoute());
                                  },
                                  child: const Text('Se connecter'),
                                ),
                              ),
                            ),
                    ],
                  ),
                  // listViewItems(
                  //     empruntes, context, snapshot, width, height),
                  Divider(
                    height: height * 0.05,
                  ),
                  listViewItems(
                      usages, context, outils.listOutils, width, height),
                  Divider(
                    height: height * 0.05,
                  ),
                  listViewItems(
                      recents, context, outils.listOutils, width, height),
                ],
              ),
            );
          },
          orElse: () => Container(),
        );

        //   return Container();
        //   StreamBuilder<List<OutilsDto>>(
        //       stream: value.listOutils,
        //       builder: (context, AsyncSnapshot<List<OutilsDto>> snapshot) {
        //         if (snapshot.hasData) {
        //           return SingleChildScrollView(
        //             child: Column(
        //               children: [
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Align(
        //                 alignment: Alignment.centerRight,
        //                 child: ElevatedButton(
        //                   onPressed: (){print("login");},
        //                   child: Text('Se connecter'),
        //                 ),
        //               ),
        //             ),
        //             // listViewItems(
        //             //     empruntes, context, snapshot, width, height),
        //             Divider(
        //               height: height * 0.05,
        //             ),
        //             listViewItems(
        //                 usages, context, snapshot, width, height),
        //             Divider(
        //               height: height * 0.05,
        //             ),
        //             listViewItems(
        //                 recents, context, snapshot, width, height),
        //           ],
        //         ),
        //       );
        //     } else {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //   }),
        //   orElse: () => Container(),
        // );
      },
    );
  }

  Widget listViewItems(String title, context, KtList<Outils> outils,
          double width, double height) =>
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: width * 0.05),
              // color: Colors.green,
              width: width * 0.8,
              height: height * 0.08,
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 30,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.36,
                child: Scrollbar(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: outils.size,
                      itemBuilder: (context, index) {
                        return title == 'LES RÉCENTS'
                            ? cardItem(context, index,  outils[index],user,)
                            : title == 'LES USAGÉS'
                                ? outils[index].etat.toString() == 'Usagé'
                                    ? cardItem(context, index, outils[index],user)
                                    : Container()
                                : title == 'LES EMPRUNTÉS'
                                    ? outils[index].status.toString() ==
                                            'Emprunté'
                                        ? cardItem(
                                            context, index, outils[index],user)
                                        : Container()
                                    : Container();
                      }),
                ),
              ),
            ),
          ],
        ),
      );

  Widget listViewCat(context, double width, double height) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.07,
            child: const Text(
              'Listes des catégories',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            width: width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Center(
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5),
                  itemCount: listCat.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CategoriesOutilsMesurePage(),
                              ),
                            );
                          }
                          if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TiroirPage(),
                              ),
                            );
                          }
                        },
                        child: Card(
                            color: Colors.grey[100],
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  // width: width * 0.1,
                                  height: height * 0.1,
                                  child: Card(
                                    child: Image.asset(
                                      'assets/images/picto/' +
                                          listCat[index] +
                                          '.jpg',
                                    ),
                                    elevation: 18.0,
                                  ),
                                ),
                                Text(listCat[index].toString()),
                              ],
                            )),
                      ),
                    );
                  }),
            ),
          ),
        ],
      );

  Widget cardItem(context, index, Outils outil, FirebaseAuth user) {
    return CardItemOuils(
      outil: outil,
      user: user,
    );
  }
}
