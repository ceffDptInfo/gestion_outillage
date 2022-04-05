// import 'package:flutter/material.dart';
// import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';
// import '../../outils_detail/outils_mesure_list_detail_page.dart';

// Widget cardItemOuils(
//   snapshot,
//   int index,
//   context,
//   String? etat,
//   String designation,
//   String complement,
//   String emplacement,
//   String statut,
//   String dimangle1,
//   String dimangle2,
//   String dimmm1,
//   String dimmm2,
//   String nameimg,
//   String arborescence,
//   String categorie,
// ) =>
//     Container(
//       // width: MediaQuery.of(context).size.width * 0.3,
//       // height: MediaQuery.of(context).size.width * 0.4,
//       child: GestureDetector(
//         onTap: () => Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => OutilsMesureListDetailPage(
//               designation,
//               complement,
//               emplacement,
//               etat!,
//               statut,
//               index,
//               dimangle1,
//               dimangle2,
//               dimmm1,
//               dimmm2,
//               nameimg,
//               arborescence,
//               categorie,
//             ),
//           ),
//         ),
//         child: snapshot.data![index].name_cat.toString() == categorie
//             ? Card(
//                 semanticContainer: true,
//                 // elevation: 20,
//                 shape: RoundedRectangleBorder(
//                   side: BorderSide(color: Colors.black),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 margin: EdgeInsets.all(10),
//                 child: Container(
//                   // height: MediaQuery.of(context).size.height * 0.3,
//                   foregroundDecoration: RotatedCornerDecoration(
//                     color: statut == "Disponible" ? Colors.green : Colors.red,
//                     geometry: const BadgeGeometry(
//                       width: 58,
//                       height: 58,
//                       cornerRadius: 20,
//                     ),
//                     // labelInsets: const LabelInsets(baselineShift: 0),
//                     textSpan: TextSpan(
//                       text: statut,
//                       style: TextStyle(
//                         fontSize: 10,
//                         letterSpacing: 0,
//                         fontWeight: FontWeight.bold,
//                         // backgroundColor: Colors.red,
//                       ),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Center(
//                         child: Align(
//                           child: Container(
//                             // padding: EdgeInsets.only(
//                             //   top: 1,
//                             // ),
//                             // margin:
//                             // EdgeInsets.only(bottom: 20, left: 20, right: 20),

//                             // maxHeight: 200,
//                             child: ClipRRect(
//                               // borderRadius: BorderRadius.circular(16.0),
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(18),
//                                 topRight: Radius.circular(18),
//                               ),
//                               child: Image.asset(
//                                 "assets/images/" + nameimg.toString() + ".JPG",
//                                 fit: BoxFit.cover,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.25,
//                                 width: MediaQuery.of(context).size.width * 0.8,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Align(
//                         child: Container(
//                           margin: EdgeInsets.only(top: 10),
//                           // color: Colors.blue,
//                           width: 150,
//                           height: 64,
//                           // child: FittedBox(
//                           // alignment: Alignment.center,
//                           // fit: BoxFit.fitWidth,
//                           child: Column(
//                             children: [
//                               Flexible(
//                                 child: Container(
//                                     child: Text(designation + "\n" + complement,
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold))),
//                               ),
//                               SizedBox(
//                                 height: 16,
//                               ),
//                               dimmm1 != "0" || dimmm2 != "0"
//                                   ? Text(
//                                       "Dim [mm]: " + dimmm1 + " / " + dimmm2,
//                                     )
//                                   : Container(),
//                               dimangle1 != "0" || dimangle2 != "0"
//                                   ? Text(
//                                       "Dim angle: " +
//                                           dimangle1 +
//                                           " / " +
//                                           dimangle2,
//                                     )
//                                   : Container(),
//                             ],
//                           ),
//                           // ),
//                         ),
//                       ),
//                       Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Container(
//                           margin: EdgeInsets.only(top: 20),
//                           width: 80,
//                           height: 30,
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.all(Radius.circular(20)),
//                             child: Container(
//                               color: etat == "Usagé"
//                                   ? Colors.orange
//                                   : Colors.green,
//                               child: Center(
//                                 child: Text(
//                                   etat!,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   // textAlign: TextAlign.left,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             : Container(),
//       ),
//     );
