import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/outils_watcher_bloc.dart';
import 'package:kt_dart/kt.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:gestion_outillage/domain/outils/outils.dart';

import '../../../infrastructure/outils/outils_repository.dart';
import '../../core/card_item_outils.dart';

// ignore: must_be_immutable
class MyDialogContent extends StatefulWidget {
  final FirebaseAuth user;
  final KtList<Outils> outils;
  int activeIndex;
  final String title;

  MyDialogContent(this.user, this.outils, this.activeIndex, this.title,
      {Key? key})
      : super(key: key);

  @override
  _MyDialogContentState createState() => _MyDialogContentState();
}

class _MyDialogContentState extends State<MyDialogContent> {
  Outilsrepository outilsrepository = Outilsrepository();

  @override
  Widget build(BuildContext context) {
    // Future<List<OutilsDto>> listOutils = outilsrepository.fetchOutils();
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
        loadSuccess: (outilsValue) {
          // print(outilsValue.listOutils)
          return SizedBox(
            height: MediaQuery.of(context).size.height * 1.2,
            width: MediaQuery.of(context).size.width,
            // color: Colors.amber,
            // child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1.2,
                  margin: const EdgeInsets.symmetric(vertical: 14),
                  // color: Colors.blue,
                  child: CarouselSlider.builder(
                      itemCount:
                          widget.title == "Outils de m??trologie" ? 21 : 125,
                      // widget.outils.size < 10 ? widget.outils.size : 10,
                      options: CarouselOptions(
                        viewportFraction: 0.25,
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
                            child: widget.title == 'Outils de fraisage'
                                ? outilsValue.listOutils[index].categorie
                                            .toString() ==
                                        'Fraisage-per??age'
                                    ? CardItemOuils(
                                        outil: outilsValue.listOutils[index],
                                        user: widget.user,
                                      )
                                    : Container()
                                : widget.title == 'Outils de per??age'
                                    ? outilsValue.listOutils[index].categorie
                                                .toString() ==
                                            'Fraisage-per??age'
                                        ? CardItemOuils(
                                            outil:
                                                outilsValue.listOutils[index],
                                            user: widget.user,
                                          )
                                        : Container()
                                    : widget.title == 'Outils de m??trologie'
                                        ? outilsValue
                                                    .listOutils[index].categorie
                                                    .toString() ==
                                                'M??trologie'
                                            ? CardItemOuils(
                                                outil: outilsValue
                                                    .listOutils[index],
                                                user: widget.user,
                                              )
                                            : Container()
                                        : Container());
                      }),
                ),
                AnimatedSmoothIndicator(
                  onDotClicked: (index) {
                    setState(() {
                      widget.activeIndex = index;
                    });
                  },
                  activeIndex: widget.activeIndex,
                  count: widget.title == "Outils de m??trologie" ? 21 : 125,
                  effect: const ExpandingDotsEffect(
                    dotWidth: 20,
                    dotHeight: 20,
                    activeDotColor: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
        orElse: () => Container(),
      );
    });
  }
}
