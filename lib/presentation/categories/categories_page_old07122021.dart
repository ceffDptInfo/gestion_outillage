import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';

// ignore: must_be_immutable
class CategoriesOutilsMesurePage extends StatelessWidget {
  CategoriesOutilsMesurePage({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  String query = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: FutureBuilder<List<OutilsDto>>(
        // future: outilsrepository.fetchOutils(),
        // future: fetchOutils(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: SizedBox(
                width: width,
                height: height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width * 0.2,
                      height: height,
                      color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          right: 8.0,
                          top: 32.0,
                          bottom: 8.0,
                        ),
                        child: Container(
                          color: Colors.amber,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.1,
                                  color: Colors.red,
                                  child: Center(
                                    child: Image.asset(
                                      "assets/images/ceff.png",
                                      // height: MediaQuery.of(context).size.height * 0.2,
                                      // width: ,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.8,
                      height: height,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Text("error : ${snapshot.data}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

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
