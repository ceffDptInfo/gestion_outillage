import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outil_actor/outil_actor_bloc.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';

import 'package:gestion_outillage/presentation/core/appbar_widget.dart';
import 'package:gestion_outillage/presentation/outils_add/widgets/outils_choice_chip.dart';

class OutilsMesureListDetailPage extends StatefulWidget {
  final Outils outil;
  final FirebaseAuth user;

  // ignore: use_key_in_widget_constructors
  const OutilsMesureListDetailPage(this.outil, this.user);

  @override
  State<OutilsMesureListDetailPage> createState() =>
      _OutilsMesureListDetailPageState();
}

class _OutilsMesureListDetailPageState
    extends State<OutilsMesureListDetailPage> {
  bool edit = false;

  final TextEditingController _designationController = TextEditingController();

  final TextEditingController _complementController = TextEditingController();

  final TextEditingController _emplacementController = TextEditingController();

  final TextEditingController _dimensionController = TextEditingController();

  final TextEditingController _dimensionSecondController =
      TextEditingController();

  String emplacementSub = "";

  Outils outilborrowed = Outils(
      id: UniqueId(),
      userId: "",
      noInventaire: "",
      designation: "",
      dimmm1: "",
      dimmm2: "",
      dimangle1: "",
      dimangle2: "",
      complement: "",
      emplacement: "",
      etat: "",
      login: "",
      status: "",
      nameImg: "",
      arborescence: "",
      categorie: "");

  bool isBrocken = false;
  bool isDispo = false;
  String etat = "Usagé";
  String statue = "Disponible";
  String stateEtat = "Fonctionnel";

  @override
  void initState() {
    super.initState();
    if (widget.outil.etat == "Usagé") {
      isBrocken = true;
    } else {
      isBrocken = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    File? _pickedImageFile;

    Future _pickImage(ImageSource source) async {
      final ImagePicker _picker = ImagePicker();
      final pickedImage = await _picker.pickImage(source: source);
      setState(() {
        if (pickedImage != null) {
          _pickedImageFile = File(pickedImage.path);
          // widget.imagePickFunction(_pickedImageFile);
        } else {
          print('No image selected');
        }
      });
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarReturn(),
      ),
      floatingActionButton: widget.user.currentUser != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (widget.user.currentUser!.email!.contains("eleve")) ...[
                  if (widget.outil.status == "Emprunté") ...[
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          isBrocken = !isBrocken;
                        });
                      },
                      label:
                          Text(isBrocken ? "Fonctionnel" : "Non-fonctionnel"),
                      backgroundColor:
                          !isBrocken ? Colors.orange.shade200 : Colors.orange,
                      elevation: 0,
                    )
                  ],
                ],
                const SizedBox(
                  width: 20,
                ),
                if (widget.user.currentUser!.email!.contains("eleve")) ...[
                  FloatingActionButton.extended(
                    onPressed: () {
                      setState(
                        () {
                          if (widget.outil.status == "Emprunté") {
                            if (isBrocken) {
                              etat = "Usagé";
                            }
                            BlocProvider.of<OutilActorBloc>(context).add(
                              OutilActorEvent.update(
                                widget.outil
                                    .copyWith(etat: etat, status: "Disponible"),
                              ),
                            );
                          } else if (widget.outil.status == "Disponible") {
                            BlocProvider.of<OutilActorBloc>(context).add(
                              OutilActorEvent.create(
                                widget.outil.copyWith(
                                  id: widget.outil.id,
                                  userId: widget.user.currentUser!.uid,
                                  noInventaire: widget.outil.noInventaire,
                                  designation: widget.outil.designation,
                                  dimmm1: widget.outil.dimmm1,
                                  dimmm2: widget.outil.dimmm2,
                                  dimangle1: widget.outil.dimangle1,
                                  dimangle2: widget.outil.dimangle2,
                                  complement: widget.outil.complement,
                                  emplacement: widget.outil.emplacement,
                                  etat: widget.outil.etat,
                                  login: widget.outil.login,
                                  status: "Emprunté",
                                  nameImg: widget.outil.nameImg,
                                  arborescence: widget.outil.arborescence,
                                  categorie: widget.outil.categorie,
                                ),
                              ),
                            );
                          }
                          Navigator.of(context).pop();
                        },
                      );
                    },
                    label: widget.outil.status == "Emprunté"
                        ? const Text("Rendre l'outil")
                        : const Text("Emprunter"),
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                  ),
                  // ]
                ] else ...[
                  if (widget.user.currentUser!.email!.contains("prof")) ...[
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          isBrocken = !isBrocken;
                        });
                      },
                      label:
                          Text(isBrocken ? "Fonctionnel" : "Non-Fonctionnel"),
                      backgroundColor:
                          !isBrocken ? Colors.orange.shade200 : Colors.orange,
                      foregroundColor: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        setState(() {
                          if (widget.outil.etat == "Usagé") {
                            etat = "Neuf";
                            BlocProvider.of<OutilActorBloc>(context).add(
                              OutilActorEvent.update(
                                widget.outil.copyWith(etat: etat),
                              ),
                            );
                          } else if (widget.outil.etat == "Neuf") {
                            etat = "Usagé";
                            BlocProvider.of<OutilActorBloc>(context).add(
                              OutilActorEvent.update(
                                widget.outil.copyWith(etat: etat),
                              ),
                            );
                          }
                          Navigator.of(context).pop();
                        });
                      },
                      label: const Text("Sauvegarder"),
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                    ),
                  ]
                ]
              ],
            )
          : null,
      body: Container(
          color: Colors.black12,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      // width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(8.0),
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          GestureDetector(
                            // child: Container(
                            // child: Hero(
                            //   tag: 'imageHero',
                            child: PhotoView(
                              imageProvider: AssetImage(
                                  'assets/images/image_outils/' +
                                      widget.outil.nameImg.toString()),
                              // maxScale: PhotoViewComputedScale.covered,
                              // filterQuality: FilterQuality.low,
                              backgroundDecoration:
                                  BoxDecoration(color: Colors.transparent),
                            ),
                            // ),
                            // ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return DetailScreen(widget.outil.nameImg);
                              }));
                            },
                          ),
                          edit == true
                              ? Positioned(
                                  right: 100,
                                  bottom: 0,
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    child: const Icon(Icons.camera_alt),
                                    onPressed: () {
                                      // _cropImage();
                                    },
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        listInformation("Désignation", widget.outil.designation,
                            Colors.black, edit, _designationController),

                        // ignore: unnecessary_null_comparison
                        widget.outil.dimangle1 != "0" ||
                                widget.outil.dimangle2 != "0"
                            ? listInformation(
                                "Dimension °",
                                widget.outil.dimangle1! +
                                    " / " +
                                    widget.outil.dimangle2!,
                                Colors.black,
                                edit,
                                _dimensionController)
                            : Container(),
                      ],
                    ),
                    edit == false
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              widget.outil.dimmm1 != "0" ||
                                      widget.outil.dimmm2 != "0"
                                  ? listInformation(
                                      "Dimension [mm]",
                                      widget.outil.dimmm1! +
                                          " / " +
                                          widget.outil.dimmm2!,
                                      Colors.black,
                                      edit,
                                      _dimensionSecondController)
                                  : Container(),
                              widget.outil.complement != ""
                                  ? listInformation(
                                      "Complément",
                                      widget.outil.complement,
                                      Colors.black,
                                      edit,
                                      _complementController)
                                  : Container(),
                            ],
                          )
                        : Row(
                            children: [
                              widget.outil.dimmm1 != "0" ||
                                      widget.outil.dimmm2 != "0"
                                  ? listInformation(
                                      "Dimension [mm]",
                                      widget.outil.dimmm1! +
                                          " / " +
                                          widget.outil.dimmm2!,
                                      Colors.black,
                                      edit,
                                      _dimensionSecondController)
                                  : Container(),
                              widget.outil.complement != ""
                                  ? listInformation(
                                      "Complément",
                                      widget.outil.complement,
                                      Colors.black,
                                      edit,
                                      _complementController)
                                  : Container(),
                            ],
                          ),
                    Divider(),
                    // if (!widget.user.currentUser!.email
                    //     .toString()
                    //     .contains("prof")) ...[
                    Column(
                      children: [
                        widget.outil.etat != ""
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 100),
                                    child: const Text(
                                      "Etat",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  edit == false
                                      ? chipInfo(widget.outil.etat, "")
                                      : Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ChoiceChipItemEtat(
                                                  "Neuf",
                                                  Colors.green,
                                                  widget.outil.etat),
                                              ChoiceChipItemEtat(
                                                  "Usagé",
                                                  Colors.amber,
                                                  widget.outil.etat),
                                              ChoiceChipItemEtat(
                                                  "Défectueux",
                                                  Colors.red,
                                                  widget.outil.etat),
                                            ],
                                          ),
                                        ),

                                  // actionButton(designation, context),
                                ],
                              )
                            : Container(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 100),
                              child: const Text(
                                "Statut",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            edit == false
                                ? chipInfo("", widget.outil.status)
                                : Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ChoiceChipItemStatut(
                                            "Disponible",
                                            Colors.green,
                                            widget.outil.etat,
                                            widget.outil.status),
                                        ChoiceChipItemStatut(
                                          "Emprunté",
                                          Colors.amber,
                                          widget.outil.etat,
                                          widget.outil.status,
                                        ),
                                      ],
                                    ),
                                  ),
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                      ],
                    ),
                    // ]
                  ],
                ),
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: listInformation(
                          "Emplacement",
                          widget.outil.emplacement,
                          Colors.black,
                          edit,
                          _emplacementController),
                    ),
                    // Text("Emplacement : " + emplacementSub),
                    gridEmplacement(context),
                    // Text("Emprunté par ${widget.outil.userId.toString()}")
                  ],
                ),
              ),
            ],
          )
          // statut == "Disponible"
          //     ? listInformation("Etat", etat,
          //         etat == "Neuf" ? Colors.green : Colors.amber)
          //     : Container(),

          ),
    );
  }

  Widget listInformation(
      String title, String info, Color color, bool edit, _controller) {
    return edit == false
        ? Container(
            margin: EdgeInsets.only(left: 100, bottom: 5, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  info,
                  style: TextStyle(fontSize: 25, color: color),
                  textWidthBasis: TextWidthBasis.longestLine,
                ),
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.only(left: 100, bottom: 5, top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  height: MediaQuery.of(context).size.width / 28,
                  margin: EdgeInsets.only(top: 15),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // labelText: title,
                      icon: Icon(Icons.edit),
                    ),
                    style: TextStyle(fontSize: 15, color: color),
                  ),
                ),
              ],
            ),
          );
  }
}

void _show(BuildContext ctx) {
  showModalBottomSheet(
    context: ctx,
    builder: (ctx) => Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CHAMP "),
          TextField(
            keyboardType: TextInputType.name,
          ),
          Text("Statut"),
          Row(
            children: [],
          ),
        ],
      ),
    ),
  );
}

Widget actionButton(String title, context) {
  return GestureDetector(
    onTap: () {
      // print("show");
      _show(context);
    },
    child: Container(
      margin: const EdgeInsets.only(left: 100, bottom: 5, top: 5),
      width: 200,
      height: 50,
      child: Card(
        color: Colors.grey[600],
        child: const Center(
          child: Text(
            "Editer",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
    ),
  );
}

class DetailScreen extends StatelessWidget {
  final String title;
  const DetailScreen(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.width * 0.05,
            ),
            child: const AppBarReturn()),
        body: GestureDetector(
          child: Center(
            // child: Hero(
            //   tag: title,
            child:
                Image.asset('assets/images/image_outils/' + title.toString()),
            // ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

Widget gridEmplacement(context) => Container(
      // color: Colors.black38,
      margin: EdgeInsets.only(left: 70),
      width: MediaQuery.of(context).size.height / 2,
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView.builder(
          itemCount: 35,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            childAspectRatio: (1 / 1.5),
            crossAxisCount: 7,
          ),
          itemBuilder: (BuildContext context, int index) {
            if (index == 1 ||
                index == 2 ||
                index == 3 ||
                index == 4 ||
                index == 5 ||
                index == 6) {
              return new Container(
                // color: Colors.transparent,
                child: new Center(
                  // child: new CircleAvatar(
                  //   backgroundColor: Colors.white,
                  child: new Text(
                    '$index',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // ),
              );
              // abcd
            } else if (index == 7 ||
                index == 14 ||
                index == 21 ||
                index == 28) {
              return new Container(
                color: Colors.transparent,
                child: new Center(
                  // child: new CircleAvatar(
                  //   backgroundColor: Colors.white,
                  child: new Text(
                    index == 7
                        ? "d"
                        : index == 14
                            ? "c"
                            : index == 21
                                ? "b"
                                : index == 28
                                    ? "a"
                                    : "",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    // ),
                  ),
                ),
              );
            }
            if (index == 26 || index == 27 || index == 33 || index == 34) {
              return new Container(
                color: Colors.black,
                // child: new Center(
                //   child: new CircleAvatar(
                //     backgroundColor: Colors.white,
                //     child: new Text('$index'),
                //   ),
                // ),
              );
            } else {
              if (index == 0) {
                return new Container();
              } else {
                return new Container(
                  color: Colors.grey[600],
                  // child: new Center(
                  //   child: new CircleAvatar(
                  //     backgroundColor: Colors.white,
                  //     child: new Text('$index'),
                  //   ),
                  // ),
                );
              }
            }
          }),
    );
