import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/auth/auth_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/user_outils_watcher/user_outils_watcher_bloc.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_repository.dart';
// import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:gestion_outillage/presentation/core/appbar_widget.dart';
import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:kt_dart/kt.dart';

import '../../../application/outils/outils_watcher/outils_watcher_bloc.dart';
// import 'package:table_calendar/table_calendar.dart';

class DashboardForm extends StatelessWidget {
  const DashboardForm({Key? key}) : super(key: key);

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
            // return Text("salue");

            // return Container();
            // StreamBuilder<List<OutilsDto>>(
            // stream: value.listOutils,
            // builder: (context, AsyncSnapshot<List<OutilsDto>> snapshot) {
            // if (snapshot.hasData) {
            // return
            // BlocBuilder<OutilsWatcherBloc, OutilsWatcherState>(
            // builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: SafeArea(
                    child: Scaffold(
                      // appBar: PreferredSize(
                      //     preferredSize: Size.fromHeight(
                      //       MediaQuery.of(context).size.width * 0.05,
                      //     ),
                      //     child: appbar(context)),
                      appBar: AppBar(
                        backgroundColor: Colors.grey[200],
                        actions: [
                          PopupMenuButton(
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
                          ),
                        ],
                      ),
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            // SizedBox(
                            //   width: width,
                            //   height: 200,
                            //   child: ListView(
                            //     scrollDirection: Axis.horizontal,
                            //     children: [
                            //       // DateTime.now().hour
                            //       // DateTime.now().minute;
                            //       notificationCard(
                            //         'Outils en retard',
                            //         'Micromètre d\'intérieur 25-50',
                            //         '3 jour',
                            //         context,
                            //         Colors.redAccent,
                            //       ),
                            //       notificationCard(
                            //         'Outils en retard',
                            //         'Pinule de centrage',
                            //         '3 jour',
                            //         context,
                            //         Colors.redAccent,
                            //       ),
                            //       notificationCard('Avez-vous rendu vos outils ?',
                            //           '', '1 jour', context, Colors.amber[800]),
                            //       notificationCard(
                            //         'Demande d\'outils',
                            //         'Centreur de diamètre',
                            //         '1 heure',
                            //         context,
                            //         Colors.blueGrey,
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(
                              height: 20,
                            ),

                            // listViewMesOutils(context, outils.listOutils, width,
                            //     height, 'Mon historique'),
                            listViewMesOutils(context, outils.listOutils, width,
                                height, 'Mes outils empruntés'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          //               //     );
          //             },
          //           // );
          //         // }
          //         // else {
          //         //   return const Center(child: CircularProgressIndicator());
          //         // }
          //       // },
          //     // ),
          //     orElse: () => Container(),
          //   );
          // },
          orElse: () => Container(),
        );
      },
    );
  }

  Widget listViewMesOutils(context, KtList<Outils> outils, double width,
          double height, String title) =>
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
                        ? cardItem(context, index, outils[index])
                        : Container()
                    : cardItem(context, index, outils[index]);
              },
            ),
          ),
        ],
      );
}

Widget cardItem(context, index, Outils outil) {
  return CardItemOuils(
    // snapshot: snapshot,
    index: index,
    context: context,
    // id: outil.id.toString(),
    // id: UniqueId.fromUniqueString(snapshot.data![index].id).toString(),
    login: outil.login!,
    noInventaire:
        outil.noInventaire!, //snapshot.data![index].noInventaire.toString(),
    etat: outil.etat, //snapshot.data![index].etat.toString(),
    designation:
        outil.designation, //snapshot.data![index].designation.toString(),
    complement: outil.complement, //snapshot.data![index].complement.toString(),
    emplacement:
        outil.emplacement, //snapshot.data![index].emplacement.toString(),
    statut: outil.status, //snapshot.data![index].status.toString(),
    dimangle1: outil.dimangle1!, //snapshot.data![index].dim_angle_1.toString(),
    dimangle2: outil.dimangle2!, //snapshot.data![index].dim_angle_2.toString(),
    dimmm1: outil.dimmm1!, // snapshot.data![index].dim_mm_1.toString(),
    dimmm2: outil.dimmm2!, //snapshot.data![index].dim_mm_2.toString(),
    nameImg: outil.nameImg, // snapshot.data![index].name_img.toString(),
    arborescence:
        outil.arborescence, //snapshot.data![index].arborescence.toString(),
    categorie: outil.categorie, //snapshot.data![index].categorie.toString(),
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

// class DashboardForm extends StatelessWidget {
//   const DashboardForm({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     Outilsrepository outilsrepository = Outilsrepository();

//     return FutureBuilder<List<OutilsDto>>(
//       // future: outilsrepository.fetchOutils(),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return Row(
//             children: [
//               Expanded(
//                 child: SafeArea(
//                   child: Scaffold(
//                     appBar: PreferredSize(
//                         preferredSize: Size.fromHeight(
//                           MediaQuery.of(context).size.width * 0.05,
//                         ),
//                         child: appbar(context)),
//                     body: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             width: width,
//                             height: 200,
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 // DateTime.now().hour
//                                 // DateTime.now().minute;
//                                 notificationCard(
//                                   'Outils en retard',
//                                   'Micromètre d\'intérieur 25-50',
//                                   '3 jour',
//                                   context,
//                                   Colors.redAccent,
//                                 ),
//                                 notificationCard(
//                                   'Outils en retard',
//                                   'Pinule de centrage',
//                                   '3 jour',
//                                   context,
//                                   Colors.redAccent,
//                                 ),
//                                 notificationCard('Avez-vous rendu vos outils ?',
//                                     '', '1 jour', context, Colors.amber[800]),
//                                 notificationCard(
//                                   'Demande d\'outils',
//                                   'Centreur de diamètre',
//                                   '1 heure',
//                                   context,
//                                   Colors.blueGrey,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           listViewMesOutils(context, snapshot, width, height,
//                               'Mes outils actuels'),
//                           listViewMesOutils(context, snapshot, width, height,
//                               'Mon historique'),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         } else if (snapshot.hasError) {
//           return Text("error : ${snapshot.data}");
//         }
//         return const Center(child: CircularProgressIndicator());
//       },
//     );
//   }

//   Widget listViewMesOutils(
//           context, var snapshot, double width, double height, String title) =>
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             margin: EdgeInsets.only(left: width * 0.05),
//             // color: Colors.blue,
//             // width: width * 0.1,
//             height: height * 0.07,
//             child: Text(
//               title,
//               style: const TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey),
//             ),
//           ),
//           SizedBox(
//             // color: Colors.green,
//             // width: 200,
//             height: MediaQuery.of(context).size.height * 0.36,
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (context, index) {
//                   return title == 'Mes outils actuels'
//                       ? snapshot.data![index].status.toString() == 'Emprunté'
//                           ? cardItem(context, index, snapshot)
//                           : Container()
//                       : cardItem(context, index, snapshot);
//                 }),
//           ),
//         ],
//       );
// }

// Widget cardItem(context, index, snapshot) {
//   return CardItemOuils(
//     // snapshot: snapshot,
//     index: index,
//     context: context,
//     // id: UniqueId.fromUniqueString(snapshot.data![index].id).toString(),
//     login: snapshot.data![index].login,
//     noInventaire: snapshot.data![index].noInventaire.toString(),
//     etat: snapshot.data![index].etat.toString(),
//     designation: snapshot.data![index].designation.toString(),
//     complement: snapshot.data![index].complement.toString(),
//     emplacement: snapshot.data![index].emplacement.toString(),
//     statut: snapshot.data![index].status.toString(),
//     dimangle1: snapshot.data![index].dim_angle_1.toString(),
//     dimangle2: snapshot.data![index].dim_angle_2.toString(),
//     dimmm1: snapshot.data![index].dim_mm_1.toString(),
//     dimmm2: snapshot.data![index].dim_mm_2.toString(),
//     nameImg: snapshot.data![index].name_img.toString(),
//     arborescence: snapshot.data![index].arborescence.toString(),
//     categorie: snapshot.data![index].categorie.toString(),
//   );
// }

// Widget listInformation(
//   String title,
//   String info,
// ) =>
//     Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         FittedBox(
//           fit: BoxFit.fill,
//           child: Text(
//             title,
//             // style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//         ),
//         const SizedBox(
//           width: 40,
//         ),
//         Text(
//           info,
//           style: const TextStyle(fontSize: 25, color: Colors.black),
//           textWidthBasis: TextWidthBasis.longestLine,
//         ),
//       ],
//     );

// Widget notificationCard(
//         String title, String info, String date, context, color) =>
//     SizedBox(
//       height: 80,
//       width: MediaQuery.of(context).size.width / 3,
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         color: color,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.only(left: 32.0),
//                   child: Icon(
//                     Icons.check_circle,
//                     size: 32,
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 info != ''
//                     ? Text(
//                         info,
//                         style: const TextStyle(
//                           fontSize: 15,
//                           color: Colors.white,
//                         ),
//                       )
//                     : Container(),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(right: 32),
//               child: Text(
//                 date,
//                 style: const TextStyle(
//                   fontSize: 15,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
