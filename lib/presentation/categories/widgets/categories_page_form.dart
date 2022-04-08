import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/presentation/categories/widgets/show_dialog_content.dart';
import 'package:gestion_outillage/presentation/outils_add/outils_add_page.dart';

import '../../../application/outils/outils_watcher/outils_watcher_bloc.dart';

// ignore: must_be_immutable
class CategoriesOutilsMesureForm extends StatelessWidget {
  FirebaseAuth user;
  CategoriesOutilsMesureForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int activeIndex = 0;
    return BlocBuilder<OutilsWatcherBloc, OutilsWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadFailure: (value) => const Center(
            child: Text("Erreur de chargement"),
          ),
          loadInProgress: (value) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (outils) {
            return Scaffold(
              // appBar: PreferredSize(
              //     preferredSize: Size.fromHeight(
              //       MediaQuery.of(context).size.width * 0.05,
              //     ),
              //     child: appBarWithSearch(context, 'Catégorie page')),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      // margin: EdgeInsets.only(left: width * 0.05),
                      // color: Colors.blue,
                      // width: width * 0.1,
                      // height: MediaQuery.of(context).size.height * 0.07,
                      child: Text(
                        'Assortiments',
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    Align(
                      // color: Colors.green,
                      // width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height / 2,

                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 5),
                        itemCount: listCat.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                showCustomDialog(
                                    context,
                                    listCat[index].toString(),
                                    outils.listOutils,
                                    activeIndex);
                              },
                              child: Card(
                                  color: Colors.grey[100],
                                  elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        // width: width * 0.1,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.1,
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
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget title(String title) {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.only(left: 80),
      child: Text(
        title,
        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }

  void searchOutils(String query) {
    // final outils = outilsDto.where
  }

  void showCustomDialog(BuildContext context, String title,
          KtList<Outils> outils, int activeIndex) async =>
      await showDialog(
        // barrierColor: Colors.black54,
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Theme.of(context).backgroundColor,
          actions: [
            // ActionChip(
            //   onPressed: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const OutilsAddPage()));
            //   },
            //   shape: const StadiumBorder(side: BorderSide()),
            //   label: const Text('Ajouter un outil',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(color: Colors.black, fontSize: 15)),
            //   labelPadding: const EdgeInsets.symmetric(horizontal: 50),
            //   avatar: const Icon(Icons.add),
            //   backgroundColor: Colors.green,
            // ),
            ActionChip(
              onPressed: () => Navigator.pop(context, true),
              avatar: const Icon(Icons.close),
              shape: const StadiumBorder(side: BorderSide()),
              label: const Text('Fermer',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              labelPadding: const EdgeInsets.symmetric(horizontal: 50),
              backgroundColor: Colors.red,
            ),
            // Card(
            //   color: Colors.red,
            //   child: TextButton(
            //     onPressed: () => Navigator.pop(context, true),
            //     child: Text(
            //       "Close",
            //       style: TextStyle(color: Colors.red),
            //     ),
            //   ),
            // ),
          ],
          title: Text(title),
          content: MyDialogContent(user, outils, activeIndex, title),
          // )
        ),
      );
}
