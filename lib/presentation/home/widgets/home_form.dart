import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/outils_firebase/outils_firebase_watcher_bloc.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/presentation/categories/categories_page.dart';
import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:gestion_outillage/presentation/tiroir/tiroir_page.dart';
import 'package:kt_dart/kt.dart';

class HomeStartForm extends StatelessWidget {
  final FirebaseAuth user;
  const HomeStartForm(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<OutilsFirebaseWatcherBloc, OutilsFirebaseWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadFailure: (value) => const Center(
            child: Text("Erreur de chargement"),
          ),
          loadInProgress: (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loadSuccess: (outils) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    height: height * 0.05,
                  ),
                  listViewItems(
                      usages,
                      context,
                      outils.listOutils
                          .filter((outils) => outils.etat == "Usagé"),
                      width,
                      height),
                  Divider(
                    height: height * 0.05,
                  ),
                  listViewItems(
                      empruntes,
                      context,
                      outils.listOutils
                          .filter((outils) => outils.status == "Emprunté"),
                      width,
                      height),
                ],
              ),
            );
          },
          orElse: () => Container(),
        );
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
                      itemCount: outils.size < 20 ? outils.size : 20,
                      itemBuilder: (context, index) {
                        return CardItemOuils(
                          outil: outils[index],
                          user: user,
                        );
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
                                    CategoriesOutilsMesurePage(
                                  user: user,
                                ),
                              ),
                            );
                          }
                          if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TiroirPage(
                                  user: user,
                                ),
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
}
