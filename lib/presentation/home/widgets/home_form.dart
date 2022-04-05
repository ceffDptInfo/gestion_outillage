import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/outils_watcher_bloc.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/infrastructure/core/outilsData.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';
import 'package:gestion_outillage/presentation/categories/categories_page.dart';
import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:gestion_outillage/presentation/tiroir/tiroir_page.dart';

class HomeStartForm extends StatelessWidget {
  const HomeStartForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<OutilsWatcherBloc, OutilsWatcherState>(
        builder: (context, state) {
      return state.maybeMap(
        loadFailure: (value) => const Center(
          child: Text("Erreur de chargement"),
        ),
        loadInProgress: (value) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadSuccess: (value) =>
            // return Container();
            StreamBuilder<List<OutilsDto>>(
                stream: value.listOutils,
                builder: (context, AsyncSnapshot<List<OutilsDto>> snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          // ElevatedButton(
                          //   onPressed: loadData,
                          //   child: Text('load'),
                          // ),
                          // listViewItems(
                          //     empruntes, context, snapshot, width, height),
                          Divider(
                            height: height * 0.05,
                          ),
                          listViewItems(
                              usages, context, snapshot, width, height),
                          Divider(
                            height: height * 0.05,
                          ),
                          listViewItems(
                              recents, context, snapshot, width, height),
                        ],
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
        orElse: () => Container(),
      );
    });
  }

  Widget listViewItems(
          String title, context, snapshot, double width, double height) =>
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
                // color: Colors.blue,
                // width: width *,
                height: MediaQuery.of(context).size.height * 0.36,
                child: Scrollbar(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return title == 'LES RÉCENTS'
                            ? cardItem(context, index, snapshot)
                            : title == 'LES USAGÉS'
                                ? snapshot.data![index].etat.toString() ==
                                        'Usagé'
                                    ? cardItem(context, index, snapshot)
                                    : Container()
                                : title == 'LES EMPRUNTÉS'
                                    ? snapshot.data![index].status.toString() ==
                                            'Emprunté'
                                        ? cardItem(context, index, snapshot)
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
            // margin: EdgeInsets.only(left: width * 0.05),
            // color: Colors.blue,
            // width: width * 0.1,
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
            // color: Colors.green,
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
                          // print(index);
                          // context.router.push(OutilsMesurePage());
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

  Widget cardItem(context, index, snapshot) {
    return CardItemOuils(
      // snapshot: snapshot,
      index: index,
      context: context,
      // id: snapshot.data![index].id,
      // id: snapshot.data![index].id,
      login: snapshot.data![index].login.toString(),
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
}
