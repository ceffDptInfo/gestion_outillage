import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outil_actor/outil_actor_bloc.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_view/photo_view.dart';

import 'package:gestion_outillage/presentation/core/appbar_widget.dart';
import 'package:gestion_outillage/presentation/outils_add/widgets/outils_choice_chip.dart';

class OutilsMesureListDetailPage extends StatefulWidget {
  // String id;
  String designation;
  String complement;
  String emplacement;
  String etat;
  String statut;

  int index;
  String dimangle1;
  String dimangle2;
  String dimm1;
  String dimm2;

  String nameimg;
  String arborescence;

  String categorie;

  OutilsMesureListDetailPage(
    // this.id,
    this.designation,
    this.complement,
    this.emplacement,
    this.etat,
    this.statut,
    this.index,
    this.dimangle1,
    this.dimangle2,
    this.dimm1,
    this.dimm2,
    this.nameimg,
    this.arborescence,
    this.categorie,
  );

  @override
  State<OutilsMesureListDetailPage> createState() =>
      _OutilsMesureListDetailPageState();
}

class _OutilsMesureListDetailPageState
    extends State<OutilsMesureListDetailPage> {
  bool edit = false;

  final TextEditingController _designationController =
      new TextEditingController();

  final TextEditingController _complementController =
      new TextEditingController();

  final TextEditingController _statutController = new TextEditingController();

  final TextEditingController _emplacementController =
      new TextEditingController();

  final TextEditingController _dimensionController =
      new TextEditingController();

  final TextEditingController _dimensionSecondController =
      new TextEditingController();

  String emplacementSub = "";

  Outils outilborrowed = new Outils(
      id: UniqueId(),
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

  @override
  void initState() {
    super.initState();
    _designationController.text = widget.designation;
    _complementController.text = widget.complement;
    _statutController.text = widget.statut;
    _emplacementController.text = widget.emplacement;
    _dimensionController.text = widget.dimangle1 + " / " + widget.dimangle2;
    _dimensionSecondController.text = widget.dimm1 + " / " + widget.dimm2;
    emplacementSub = widget.emplacement.substring(9);
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

    // Future<Null> _cropImage() async {
    //   File? croppedFile = await ImageCropper.cropImage(
    //     sourcePath: _pickedImageFile!.path,
    //     aspectRatioPresets: Platform.isAndroid
    //         ? [
    //             CropAspectRatioPreset.square,
    //             CropAspectRatioPreset.ratio3x2,
    //             CropAspectRatioPreset.original,
    //             CropAspectRatioPreset.ratio4x3,
    //             CropAspectRatioPreset.ratio16x9
    //           ]
    //         : [
    //             CropAspectRatioPreset.original,
    //             CropAspectRatioPreset.square,
    //             CropAspectRatioPreset.ratio3x2,
    //             CropAspectRatioPreset.ratio4x3,
    //             CropAspectRatioPreset.ratio5x3,
    //             CropAspectRatioPreset.ratio5x4,
    //             CropAspectRatioPreset.ratio7x5,
    //             CropAspectRatioPreset.ratio16x9
    //           ],
    //     androidUiSettings: AndroidUiSettings(
    //       toolbarTitle: 'Cropper',
    //       toolbarColor: Colors.deepOrange,
    //       toolbarWidgetColor: Colors.white,
    //       initAspectRatio: CropAspectRatioPreset.original,
    //       lockAspectRatio: false,
    //     ),
    //     iosUiSettings: IOSUiSettings(title: 'Cropper'),
    //   );
    //   if (croppedFile != null) {
    //     _pickedImageFile = croppedFile;
    //     // setState(() {

    //     // });
    //   }
    // }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appBarReturn(context),
      ),
      floatingActionButton:
          // edit == false
          // ?
          FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            // edit = true;
            if (widget.statut == "Emprunté") {
              BlocProvider.of<OutilActorBloc>(context).add(
                OutilActorEvent.update(
                  outilborrowed.copyWith(
                    // id: UniqueId.fromUniqueString(widget.id),
                    noInventaire: "",
                    designation: widget.designation,
                    dimmm1: _dimensionController.text,
                    dimmm2: _dimensionSecondController.text,
                    dimangle1: widget.dimangle1,
                    dimangle2: widget.dimangle2,
                    complement: widget.complement,
                    emplacement: widget.emplacement,
                    etat: widget.etat,
                    login: "",
                    status: "Disponible",
                    // nameImg: widget.nameimg,
                    // arborescence: widget.arborescence,
                    // categorie: widget.categorie,
                  ),
                ),
              );
            }
            // else if (widget.statut == "Disponible") {
            //   BlocProvider.of<OutilActorBloc>(context).add(
            //     OutilActorEvent.create(
            //       outilborrowed.copyWith(
            //         id: UniqueId.fromUniqueString(widget.id),
            //         noInventaire: "",
            //         designation: widget.designation,
            //         dimmm1: _dimensionController.text,
            //         dimmm2: _dimensionSecondController.text,
            //         dimangle1: widget.dimangle1,
            //         dimangle2: widget.dimangle2,
            //         complement: widget.complement,
            //         emplacement: widget.emplacement,
            //         etat: widget.etat,
            //         login: "",
            //         status: "Emprunté",
            //         nameImg: widget.nameimg,
            //         arborescence: widget.arborescence,
            //         categorie: widget.categorie,
            //       ),
            //     ),
            //   );
            // }
          });
        },
        label: widget.statut == "Emprunté"
            ? Text("Rendre l'outil")
            : Text("Emprunter"),
        // icon: Icon(Icons.edit),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      // :
      // Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       FloatingActionButton.extended(
      //         onPressed: () {
      //           setState(() {
      //             // edit = false;
      //             BlocProvider.of<OutilActorBloc>(context).add(
      //               OutilActorEvent.create(outilborrowed),
      //             );
      //           });
      //         },
      //         label: Text("Annuler"),
      //         icon: Icon(Icons.close),
      //         backgroundColor: Colors.red,
      //       ),
      //       SizedBox(
      //         width: 20,
      //       ),
      //       FloatingActionButton.extended(
      //         onPressed: () {
      //           setState(() {
      //             edit = false;
      //           });
      //         },
      //         label: Text("Sauvegarder"),
      //         icon: Icon(Icons.save),
      //         backgroundColor: Colors.green,
      //       )
      //     ],
      //   ),
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
                                      widget.nameimg.toString()),
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
                                return DetailScreen(widget.nameimg);
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
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        listInformation("Désignation", widget.designation,
                            Colors.black, edit, _designationController),

                        // ignore: unnecessary_null_comparison
                        widget.dimangle1 != "0" || widget.dimangle2 != "0"
                            ? listInformation(
                                "Dimension °",
                                widget.dimangle1 + " / " + widget.dimangle2,
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
                              widget.dimm1 != "0" || widget.dimm2 != "0"
                                  ? listInformation(
                                      "Dimension [mm]",
                                      widget.dimm1 + " / " + widget.dimm2,
                                      Colors.black,
                                      edit,
                                      _dimensionSecondController)
                                  : Container(),
                              widget.complement != ""
                                  ? listInformation(
                                      "Complément",
                                      widget.complement,
                                      Colors.black,
                                      edit,
                                      _complementController)
                                  : Container(),
                            ],
                          )
                        : Row(
                            children: [
                              widget.dimm1 != "0" || widget.dimm2 != "0"
                                  ? listInformation(
                                      "Dimension [mm]",
                                      widget.dimm1 + " / " + widget.dimm2,
                                      Colors.black,
                                      edit,
                                      _dimensionSecondController)
                                  : Container(),
                              widget.complement != ""
                                  ? listInformation(
                                      "Complément",
                                      widget.complement,
                                      Colors.black,
                                      edit,
                                      _complementController)
                                  : Container(),
                            ],
                          ),
                    Divider(),
                    Column(
                      children: [
                        widget.etat != ""
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 100),
                                    child: Text(
                                      "Etat",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),

                                  edit == false
                                      ? chipInfo(widget.etat, "")
                                      : Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ChoiceChipItemEtat("Neuf",
                                                  Colors.green, widget.etat),
                                              ChoiceChipItemEtat("Usagé",
                                                  Colors.amber, widget.etat),
                                              ChoiceChipItemEtat("Défectueux",
                                                  Colors.red, widget.etat),
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
                              margin: EdgeInsets.only(left: 100),
                              child: Text(
                                "Statut",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            edit == false
                                ? chipInfo("", widget.statut)
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
                                            widget.etat,
                                            widget.statut),
                                        ChoiceChipItemStatut(
                                            "Emprunté",
                                            Colors.amber,
                                            widget.etat,
                                            widget.statut),
                                      ],
                                    ),
                                  ),

                            // actionButton(designation, context),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                      ],
                    ),
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
                      child: listInformation("Emplacement", widget.emplacement,
                          Colors.black, edit, _emplacementController),
                    ),
                    // Text("Emplacement : " + emplacementSub),
                    gridEmplacement(context),
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
      margin: EdgeInsets.only(left: 100, bottom: 5, top: 5),
      width: 200,
      height: 50,
      child: Card(
        color: Colors.grey[600],
        child: Center(
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
  String title;
  DetailScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(
              MediaQuery.of(context).size.width * 0.05,
            ),
            child: appBarReturn(context)),
        body: GestureDetector(
          child: Center(
            child: Hero(
              tag: 'imageHero',
              child:
                  Image.asset('assets/images/image_outils/' + title.toString()),
            ),
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
      height: MediaQuery.of(context).size.height * 0.7,
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
