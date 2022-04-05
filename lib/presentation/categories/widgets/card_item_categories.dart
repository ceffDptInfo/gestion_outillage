// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'card_item_outils.dart';

// class CardItemCategory extends StatefulWidget {
//   var snapshot;
//   int index;
//   String title;

//   CardItemCategory(this.snapshot, this.index, this.title);

//   @override
//   CcardItemCategoryState createState() => CcardItemCategoryState();
// }

// class CcardItemCategoryState extends State<CardItemCategory> {
//   int activeIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 20),
//       child: Card(
//         shape: RoundedRectangleBorder(
//           side: BorderSide(color: Colors.black),
//           borderRadius: BorderRadius.circular(16),
//         ),
//         color: Colors.black12,
//         child: ExpansionTile(
//           iconColor: Colors.white,
//           // initiallyExpanded: true,
//           trailing: Icon(Icons.arrow_downward),
//           leading: ImageIcon(
//             AssetImage("assets/images/imageicon/" + widget.title + ".png"),
//             size: 100,
//           ),
//           title: Container(
//             margin:
//                 EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
//             // color: Colors.white,
//             child: Text(
//               widget.title,
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//           // trailing: Icon(Icons.arrow_drop_down,size:,),
//           children: <Widget>[
//             Container(
//               // margin:
//               //     EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
//               width: MediaQuery.of(context).size.width,
//               // height: MediaQuery.of(context).size.height * 0.8,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     CarouselSlider.builder(
//                         itemCount: widget.snapshot.data?.length,
//                         options: CarouselOptions(
//                             viewportFraction: 0.3,
//                             // autoPlay: true,
//                             pageSnapping: true,
//                             enlargeCenterPage: true,
//                             initialPage: 0,
//                             // enableInfiniteScroll: true,
//                             enlargeStrategy: CenterPageEnlargeStrategy.height,
//                             // autoPlayInterval: Duration(seconds: 2),
//                             onPageChanged: (index, reason) {
//                               setState(() => activeIndex = index);
//                             }),
//                         itemBuilder: (context, index, realIndex) {
//                           return Transform.scale(
//                             scale: index == activeIndex ? 1 : 0.8,
//                             child: cardItemOuils(
//                               widget.snapshot,
//                               index,
//                               context,
//                               widget.snapshot.data![index].etat.toString(),
//                               widget.snapshot.data![index].designation
//                                   .toString(),
//                               widget.snapshot.data![index].complement
//                                   .toString(),
//                               widget.snapshot.data![index].emplacement
//                                   .toString(),
//                               widget.snapshot.data![index].status.toString(),
//                               widget.snapshot.data![index].dim_angle_1
//                                   .toString(),
//                               widget.snapshot.data![index].dim_angle_2
//                                   .toString(),
//                               widget.snapshot.data![index].dim_mm_1.toString(),
//                               widget.snapshot.data![index].dim_mm_2.toString(),
//                               widget.snapshot.data![index].name_img.toString(),
//                               widget.snapshot.data![index].arborescence
//                                   .toString(),
//                               widget.snapshot.data![index].categorie.toString(),
//                             ),
//                           );
//                         }),
//                     AnimatedSmoothIndicator(
//                       activeIndex: activeIndex,
//                       count: widget.snapshot.data!.length,
//                       effect: SlideEffect(
//                         dotWidth: 20,
//                         dotHeight: 20,
//                         activeDotColor: Colors.white,
//                         dotColor: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Text("AAAAAAAAAA")
//           ],
//         ),
//       ),
//     );
//   }
// }



//              // ListView.builder(
//                     //     shrinkWrap: true,
//                     //     physics: AlwaysScrollableScrollPhysics(),
//                     //     scrollDirection: Axis.horizontal,
//                     //     itemCount: snapshot.data?.length,
//                     //     itemBuilder: (context, index) {
//                     //       // return Text(title);
//                     //       return cardItemOuils(
//                     //         snapshot,
//                     //         index,
//                     //         context,
//                     //         snapshot.data![index].etat.toString(),
//                     //         snapshot.data![index].designation.toString(),
//                     //         snapshot.data![index].complement.toString(),
//                     //         snapshot.data![index].emplacement.toString(),
//                     //         snapshot.data![index].status.toString(),
//                     //         snapshot.data![index].dim_angle_1.toString(),
//                     //         snapshot.data![index].dim_angle_2.toString(),
//                     //         snapshot.data![index].dim_mm_1.toString(),
//                     //         snapshot.data![index].dim_mm_2.toString(),
//                     //         snapshot.data![index].name_img.toString(),
//                     //         snapshot.data![index].name_cat.toString(),
//                     //       );
//                     //     }),