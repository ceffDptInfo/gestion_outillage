
import 'package:flutter/material.dart';
import 'package:gestion_outillage/infrastructure/core/outilsData.dart';

import 'package:gestion_outillage/presentation/categories/categories_page.dart';
import 'package:gestion_outillage/presentation/categories/widgets/search_widget.dart';
import 'package:gestion_outillage/presentation/core/appbar_widget.dart';

// ignore: must_be_immutable
class TiroirPage extends StatelessWidget {
  TiroirPage({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appbar(context),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(30),
              child: const Text(
                'Bonjour',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: buildSearch(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  itemCount: outils.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 200,
                      height: 200,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoriesOutilsMesurePage()));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(45.0),
                          ),
                          elevation: 10,
                          // color: Colors.grey[300],
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 30),
                                  child: Image.asset(
                                    "assets/images/categories/" +
                                        outilsNomImg[index] +
                                        ".png",
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 150,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 15,
                                  ),
                                  child: Text(
                                    outils[index],
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5),

                  // SliverGridDelegateWithMaxCrossAxisExtent(
                  // maxCrossAxisExtent: 200.0,
                  // // mainAxisSpacing: 10.0,
                  // // crossAxisSpacing: 10.0,
                  // childAspectRatio: 4.0,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
