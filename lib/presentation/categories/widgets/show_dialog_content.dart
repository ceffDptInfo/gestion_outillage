import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
// import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/presentation/core/card_item_outils.dart';
import 'package:kt_dart/kt.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'card_item_outils.dart';

// ignore: must_be_immutable
class MyDialogContent extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  KtList<Outils> outils;
  int activeIndex;

  MyDialogContent(this.outils, this.activeIndex, {Key? key})
      : super(key: key);

  @override
  _MyDialogContentState createState() => _MyDialogContentState();
}

class _MyDialogContentState extends State<MyDialogContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 1.2,
      width: MediaQuery.of(context).size.width,
      // color: Colors.amber,
      // child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: const [
              // SizedBox(
              //   width: MediaQuery.of(context).size.width * 0.5,
              //   height: MediaQuery.of(context).size.width * 0.05,
              // ),
              // Text(
              //   "Trier par : ",
              //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // ),
              // SortCard(context, "Neuf", Colors.green),
              // SortCard(context, "Usagé", Colors.orange),
              // SortCard(context, "Hors d'état", Colors.red),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1.2,
            margin: const EdgeInsets.symmetric(vertical: 14),
            // color: Colors.blue,
            child: CarouselSlider.builder(
                itemCount: widget.outils.size,
                options: CarouselOptions(
                  viewportFraction: 0.3,
                  // autoPlay: true,
                  pageSnapping: true,
                  enlargeCenterPage: true,
                  initialPage: 0,
                  // enableInfiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  // autoPlayInterval: Duration(milliseconds: 10),
                  onPageChanged: (index, reason) {
                    setState(() => widget.activeIndex = index);
                    // print(activeIndex);
                  },
                  // activeIndex = widget.index;
                ),
                itemBuilder: (context, index, realIndex) {
                  return Transform.scale(
                    scale: index == widget.activeIndex ? 1 : 0.8,
                    // child: CardItemOuils(
                    // outils: outils,
                    // ),
                  );
                }),
          ),

          // Expanded(
          // child:
          AnimatedSmoothIndicator(
            onDotClicked: (index) {
              setState(() {
                widget.activeIndex = index;
              });
              // print(index);
            },
            activeIndex: widget.activeIndex,
            count: widget.outils.size,
            effect: const WormEffect(
              dotWidth: 20,
              dotHeight: 20,
              activeDotColor: Colors.black,
              // dotColor: Colors.red,
            ),
          ),
          // ),
          // buildIndicator(activeIndex),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget SortCard(context, String title, Color color) {
  return Container(
    // width: MediaQuery.of(context).size.width * 0.2,
    // height: 50,
    padding: const EdgeInsets.all(4.0),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            width: 80,
            height: 50,
            child: Center(
                child: Text(
              title,
              style: const TextStyle(fontSize: 15),
            )),
            // color: Colors.red,
          ),
        ),
      ],
    ),
  );
}
