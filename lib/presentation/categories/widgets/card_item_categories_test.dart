import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:gestion_outillage/presentation/outils_add/outils_add_page.dart';

import 'show_dialog_content.dart';

class CardItemCategoryTest extends StatefulWidget {
  var snapshot;
  int index;
  String title;
  FirebaseAuth user;

  CardItemCategoryTest(
    Key? key,
    this.snapshot,
    this.index,
    this.title,
    this.user,
  ) : super(key: key);

  @override
  CardItemCategoryState createState() => CardItemCategoryState();
}

class CardItemCategoryState extends State<CardItemCategoryTest> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.black12,
        child: GestureDetector(
          onTap: () {
            showCustomDialog(
                context, widget.title, widget.snapshot, activeIndex);
            //  activeIndex = index;
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset(
                  "assets/images/imageicon/" + widget.title + ".png",
                ),
              ),
              Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context, String title, snapshot,
          int activeIndex) async =>
      await showDialog(
        barrierColor: Colors.black54,
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.blueGrey[200],
          actions: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OutilsAddPage()));
              },
              child: const Icon(Icons.add_a_photo),
              backgroundColor: Colors.green,
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text(
                "Close",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
          title: Text(widget.title),
          content: MyDialogContent(widget.user, snapshot, activeIndex,title),
          // ),
        ),
      );
}
