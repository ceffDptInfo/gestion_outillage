import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/presentation/outils_detail/outils_mesure_list_detail_page.dart';

import '../../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import '../../../infrastructure/outils/outils_repository.dart';

// ignore: must_be_immutable
class LayetteForm extends StatefulWidget {
  FirebaseAuth user;
  LayetteForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<LayetteForm> createState() => _LayetteFormState();
}

class _LayetteFormState extends State<LayetteForm> {
  String? _chosen;
  String index = "";
  String queryCat = "";
  String? _chosenValueTiroir = "Choisissez un tiroir";
  String? _chosenValueSort;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Outilsrepository outilsrepository = Outilsrepository();
    // String query = '';

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
              body: Container(
                color: Colors.grey[300],
                width: width,
                height: height,
                child: Column(
                  children: [
                    // const Text('Vous êtes dans la layette 2 / salle BD-89'),
                    Container(
                      margin: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // dropDownButtonList(
                          //     listLayette,
                          //     "Veuillez selectionner une layette",
                          //     _chosenValueLayette),
                          // dropDownButtonList(listTiroir, _chosenValueLayette),
                          // dropDownButtonList(listSort, _chosenValueTiroir),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                // border: Border.all(color: Colors.black, width: 2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                color: Colors.grey[400],
                              ),
                              // child: DropdownButton<String>(
                              //   focusColor: Colors.white,
                              //   value: _chosen,
                              //   elevation: 5,
                              //   style: const TextStyle(color: Colors.white),
                              //   iconEnabledColor: Colors.black,
                              //   icon: const Padding(
                              //       padding: EdgeInsets.only(left: 20),
                              //       child: Icon(Icons.keyboard_arrow_down)),
                              //   hint: const Text(
                              //     "Veuilez selectionner un tiroir",
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontSize: 14,
                              //         fontWeight: FontWeight.w500),
                              //   ),
                              //   onChanged: (value) {
                              //     setState(() {
                              //       _chosen = value;
                              //       index = _chosen!
                              //           .replaceAll(RegExp(r'[^0-9]'), '');
                              //     });

                              //     print("index: " + index);
                              //   },
                              //   items: listTiroir.map<DropdownMenuItem<String>>(
                              //       (String value) {
                              //     return DropdownMenuItem<String>(
                              //       value: value,
                              //       child: Text(
                              //         value,
                              //         style:
                              //             const TextStyle(color: Colors.black),
                              //       ),
                              //     );
                              //   }).toList(),
                              // ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        color: Colors.grey[800],
                        child: Row(
                          children: [
                            // textItemTitle(
                            //   // 'name_img',
                            //   'Image',
                            //   16.0,
                            //   MediaQuery.of(context).size.width * 0.08,
                            //   // outils.listOutils[index],
                            // ),
                            // textItem('N° Inventaire', 16.0),
                            textItemTitle(
                              // 'designation',
                              'Désignation',
                              4.0,
                              MediaQuery.of(context).size.width * 0.12,
                            ),
                            // textItem('Catégorie', 16.0),
                            textItemTitle(
                              // 'dim_mm_1',
                              'Dimension [mm]',
                              12.0,
                              MediaQuery.of(context).size.width * 0.1,
                            ),
                            textItemTitle(
                              // 'dim_angle',
                              'Dimension [°]',
                              8.0,
                              MediaQuery.of(context).size.width * 0.08,
                            ),
                            textItemTitle(
                              // 'complement',
                              'Complément',
                              12.0,
                              MediaQuery.of(context).size.width * 0.08,
                            ),
                            textItemTitle(
                              // 'emplacement',
                              'Emplacement',
                              12.0,
                              MediaQuery.of(context).size.width * 0.1,
                            ),
                            textItemTitle(
                              // 'etat',
                              'Etat',
                              12.0,
                              MediaQuery.of(context).size.width * 0.05,
                            ),
                            // textItem('Login', 16.0),
                            textItemTitle(
                              // 'status',
                              'Statut',
                              12.0,
                              MediaQuery.of(context).size.width * 0.08,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: outils.listOutils.size,
                          itemBuilder: (context, index) {
                            return item(index, outils.listOutils[index],
                                widget.user, context);
                          }),
                    ),
                  ],
                ),
              ),
            );
          },
          // } else {
          //   return const Center(child: CircularProgressIndicator());
          // }
          // }
          orElse: () => Container());
    });
  }
}

Widget item(int index, Outils outil, user, BuildContext context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 16.0),
    height: MediaQuery.of(context).size.height * 0.1,
    child: GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutilsMesureListDetailPage(outil, user),
        ),
      ),
      child: Card(
        child: Row(
          children: [
            // textItem(snapshot.data![index].inventory, 16.0),
            // SizedBox(
            //   // margin: const EdgeInsets.symmetric(horizontal: 16.0),
            //   width: MediaQuery.of(context).size.width * 0.07,
            //   child: Image.asset(
            //       'assets/images/image_outils/' + outil.nameImg.toString()),
            // ),
            textItem(outil.designation, 16.0,
                MediaQuery.of(context).size.width * 0.12),
            textItem(
                outil.dimmm1 == "0" && outil.dimmm2 == "0"
                    ? "   -  "
                    : outil.dimmm1! + " / " + outil.dimmm2! + " mm",
                0.0,
                MediaQuery.of(context).size.width * 0.1),
            textItem(
                outil.dimangle1 == "0" && outil.dimangle2 == "0"
                    ? "   -   "
                    : outil.dimangle1! + " / " + outil.dimangle2! + "°",
                16.0,
                MediaQuery.of(context).size.width * 0.08),
            textItem(outil.complement, 16.0,
                MediaQuery.of(context).size.width * 0.08),
            textItem(outil.emplacement, 16.0,
                MediaQuery.of(context).size.width * 0.08),
            textItem(
                outil.etat, 16.0, MediaQuery.of(context).size.width * 0.05),
            textItem(
                outil.status, 16.0, MediaQuery.of(context).size.width * 0.07),
          ],
        ),
      ),
    ),
  );
}

Widget textItem(String title, double horizontal, double width) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontal),
    child: SizedBox(
      // color: Colors.amber,
      width: width,
      child: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
    ),
  );
}

Widget textItemTitle(
  String title,
  double horizontal,
  double width,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontal),
    child: SizedBox(
      // color: Colors.amber,y
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
            textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
        onPressed: () {
          // final sortedItems = outil;
        },
        child: Text(
          title,
        ),
      ),
    ),
  );
}
