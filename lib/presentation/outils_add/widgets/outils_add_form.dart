import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/presentation/core/appbar_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../application/add_outils_form/add_outils_form_bloc.dart';

@immutable
class OutilsAddForm extends StatefulWidget {
  const OutilsAddForm({Key? key}) : super(key: key);

  // final void Function(File pickedImage) imagePickFunction;
  // OutilsAddForm(this.imagePickFunction);
  @override
  State<OutilsAddForm> createState() => _OutilsAddFormState();
}

class _OutilsAddFormState extends State<OutilsAddForm> {
  File? _pickedImageFile;

  bool selectEtat = false;
  bool selectStatut = false;

  String _selectedEtat = '';
  String _selectedStatut = '';

  Future _pickImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final pickedImage = await _picker.pickImage(source: source);
    setState(() {
      if (pickedImage != null) {
        _pickedImageFile = File(pickedImage.path);
        // widget.imagePickFunction(_pickedImageFile);
      } else {
        // print('No image selected');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddOutilsFormBloc, AddOutilsFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarReturn(),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Form(
              autovalidateMode:
                  context.read<AddOutilsFormBloc>().state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Container(
                    //   child: FileImage(_pickedImageFile!),
                    // ),

                    GestureDetector(
                      onTap: () {
                        _pickImage(ImageSource.camera);
                      },
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                              // image: FileImage(_pickedImageFile!),
                              image: _pickedImageFile == null
                                  ? MemoryImage(kTransparentImage)
                                  : FileImage(_pickedImageFile!)
                                      // : AssetImage('assets/images/0.JPG')
                                      as ImageProvider,
                              // fit: BoxFit.fill,
                            ),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.4,
                          child: _pickedImageFile == null
                              ? DottedBorder(
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  dashPattern: const [2, 4],
                                  child: const Center(
                                    // icon: Icon(Icons.image),
                                    // label: Text('Add Image'),
                                    child: Icon(
                                      Icons.photo_camera,
                                    ),
                                  ),
                                )
                              : Container(),
                        ),
                      ),
                    ),
                    // textColor: Theme.of(context).primaryColor,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: buildDesignation(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: buildComplement(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: buildEmplacement(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: buildNoInventaire(),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Etat",
                              style: TextStyle(fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                choiceChipEtat(
                                  "Neuf",
                                  Colors.green,
                                ),
                                choiceChipEtat(
                                  "Usagé",
                                  Colors.amber,
                                ),
                                choiceChipEtat(
                                  "Défectueux",
                                  Colors.red,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Statut",
                              style: TextStyle(fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                choiceChipStatut(
                                  "Disponible",
                                  Colors.green,
                                ),
                                // ),
                                choiceChipStatut(
                                  "Emprunté",
                                  Colors.red,
                                ),
                                // Container(
                                //   width: 200,
                                //   child:
                                // choiceChipStatut("Disponible", Colors.green,
                                //     selectStatut, _selectedStatut),
                                // // ),
                                // choiceChipStatut("Emprunté", Colors.red,
                                //     selectStatut, _selectedStatut),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ActionChip(
                          onPressed: () {},
                          shape: StadiumBorder(side: BorderSide()),
                          label: Text('Ajouter',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          labelPadding: EdgeInsets.symmetric(horizontal: 50),
                          avatar: Icon(Icons.add),
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        ActionChip(
                          onPressed: () => Navigator.pop(context, true),
                          avatar: Icon(Icons.close),
                          shape: StadiumBorder(side: BorderSide()),
                          label: Text('Annuler',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          labelPadding: EdgeInsets.symmetric(horizontal: 50),
                          backgroundColor: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget choiceChipEtat(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ChoiceChip(
        avatar: _selectedEtat == title
            ? Icon(Icons.check)
            : Icon(Icons.indeterminate_check_box),
        shape: StadiumBorder(side: BorderSide()),
        label: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 15)),
        labelPadding: EdgeInsets.symmetric(horizontal: 50),
        selected: _selectedEtat == title,
        onSelected: (bool selected) {
          setState(() {
            _selectedEtat = selected ? title : '';
            color = Colors.black;
            print(_selectedEtat);
          });
        },
        backgroundColor: Colors.black26,
        selectedColor: color,
        // shape: ContinuousRectangleBorder(
        //     borderRadius: BorderRadius.circular(5.0))
      ),
    );
  }

  Widget choiceChipStatut(String title, Color color) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ChoiceChip(
          avatar: _selectedEtat == title ? Icon(Icons.check) : null,
          shape: StadiumBorder(side: BorderSide()),
          label: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 15)),
          labelPadding: EdgeInsets.symmetric(horizontal: 50),
          selected: _selectedStatut == title,
          onSelected: (bool selected) {
            setState(() {
              _selectedStatut = selected ? title : '';
              color = Colors.black;
              // print("test");
            });
          },
          backgroundColor: Colors.black26,
          selectedColor: color,
          // shape: ContinuousRectangleBorder(
          //     borderRadius: BorderRadius.circular(5.0))
        ),
      ),
    );
  }
}

Widget buildDesignation() => TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10.0),
        labelText: "Designation",
      ),
      validator: (value) {
        return null;
      },
      // onChanged: (){},
      // initialValue:
      //     stations.singleWhere((element) => element.id == start).name,
      // readOnly: true,
      style: const TextStyle(fontSize: 20),
    );

Widget buildComplement() => TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10.0),
        labelText: "Complement",
      ),
      validator: (value) {
        return null;
      },
      // onChanged: (){},
      // initialValue:
      //     stations.singleWhere((element) => element.id == start).name,
      // readOnly: true,
      style: const TextStyle(fontSize: 20),
    );

Widget buildEmplacement() => TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10.0),
        labelText: "Emplacement",
      ),
      validator: (value) {
        return null;
      },
      // onChanged: (){},
      // initialValue:
      //     stations.singleWhere((element) => element.id == start).name,
      // readOnly: true,
      style: const TextStyle(fontSize: 20),
    );

Widget buildNoInventaire() => TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.all(10.0),
        labelText: "NoInventaire",
      ),
      validator: (value) {
        return null;
      },
      // onChanged: (){},
      // initialValue:
      //     stations.singleWhere((element) => element.id == start).name,
      // readOnly: true,
      style: const TextStyle(fontSize: 20),
    );
