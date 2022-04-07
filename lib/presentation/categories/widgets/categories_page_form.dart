import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';
import 'package:gestion_outillage/presentation/categories/widgets/show_dialog_content.dart';
import 'package:gestion_outillage/presentation/core/appbar_widget.dart';
import 'package:gestion_outillage/presentation/outils_add/outils_add_page.dart';
import 'package:kt_dart/kt.dart';

import '../../../application/outils/outils_watcher/outils_watcher_bloc.dart';

class CategoriesOutilsMesureForm extends StatelessWidget {
  const CategoriesOutilsMesureForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
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
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(
                    MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: appBarWithSearch(context, 'Catégorie page')),
              body: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      // margin: EdgeInsets.only(left: width * 0.05),
                      // color: Colors.blue,
                      // width: width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: const Text(
                        'Assortiments',
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      // color: Colors.green,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Center(
                        child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 5),
                          itemCount: listCat.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
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
                                      side:
                                          const BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          // width: width * 0.1,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
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
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          // return Container();
          // StreamBuilder<List<OutilsDto>>(
          //     stream: value.listOutils,
          //     builder: (context, AsyncSnapshot<List<OutilsDto>> snapshot) {
          //       if (snapshot.hasData) {

          //       } else {
          //         return const Center(child: CircularProgressIndicator());
          //       }
          //     }),
          orElse: () => Container(),
        );
      },
    );
  }
}

// ignore: must_be_immutable
// class CategoriesOutilsMesurePage extends StatelessWidget {
//   final TextEditingController controller = TextEditingController();
//   final String query = '';
//   int activeIndex = 0;
//   CategoriesOutilsMesurePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<OutilsDto>>(
//       // future: outilsrepository.fetchOutils(),
//       // future: fetchOutils(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Scaffold(
//             appBar: PreferredSize(
//                 preferredSize: Size.fromHeight(
//                   MediaQuery.of(context).size.width * 0.05,
//                 ),
//                 child: appBarWithSearch(context, query, 'Catégorie page')),
//             body: SingleChildScrollView(
//                 physics: const ScrollPhysics(),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         // margin: EdgeInsets.only(left: width * 0.05),
//                         // color: Colors.blue,
//                         // width: width * 0.1,
//                         height: MediaQuery.of(context).size.height * 0.07,
//                         child: const Text(
//                           'Assortiments',
//                           style: TextStyle(
//                               fontSize: 45,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey),
//                         ),
//                       ),
//                       SizedBox(
//                           // color: Colors.green,
//                           width: MediaQuery.of(context).size.width,
//                           height: MediaQuery.of(context).size.height * 0.3,
//                           child: Center(
//                               child: GridView.builder(
//                                   shrinkWrap: true,
//                                   gridDelegate:
//                                       const SliverGridDelegateWithFixedCrossAxisCount(
//                                           crossAxisCount: 5),
//                                   itemCount: listCat.length,
//                                   itemBuilder: (context, index) {
//                                     return Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: GestureDetector(
//                                         onTap: () {
//                                           showCustomDialog(
//                                               context,
//                                               listCat[index].toString(),
//                                               snapshot,
//                                               activeIndex);
//                                         },
//                                         child: Card(
//                                             color: Colors.grey[100],
//                                             elevation: 4.0,
//                                             shape: RoundedRectangleBorder(
//                                               side: const BorderSide(
//                                                   color: Colors.grey),
//                                               borderRadius:
//                                                   BorderRadius.circular(40),
//                                             ),
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               children: [
//                                                 SizedBox(
//                                                   // width: width * 0.1,
//                                                   height: MediaQuery.of(context)
//                                                           .size
//                                                           .height *
//                                                       0.1,
//                                                   child: Card(
//                                                     child: Image.asset(
//                                                       'assets/images/picto/' +
//                                                           listCat[index] +
//                                                           '.jpg',
//                                                     ),
//                                                     elevation: 18.0,
//                                                   ),
//                                                 ),
//                                                 Text(listCat[index].toString()),
//                                               ],
//                                             )),
//                                       ),
//                                     );
//                                   })))
//                     ])),
//           );
//         } else if (snapshot.hasError) {
//           return Text("error : ${snapshot.data}");
//         }
//         return const Center(child: CircularProgressIndicator());
//       },
//     );
//   }
// }

Widget title(String title) {
  return Container(
    // width: MediaQuery.of(context).size.width ,
    // height: MediaQuery.of(context).size.height * 0.1,
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

void showCustomDialog(
        BuildContext context, String title, KtList<Outils> outils, int activeIndex) async =>
    await showDialog(
      // barrierColor: Colors.black54,
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [
          ActionChip(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OutilsAddPage()));
            },
            shape: const StadiumBorder(side: BorderSide()),
            label: const Text('Ajouter un outil',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 15)),
            labelPadding: const EdgeInsets.symmetric(horizontal: 50),
            avatar: const Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
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
        content: MyDialogContent(outils, activeIndex),
        // ),
      ),
    );
