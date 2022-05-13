import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/outils/outil_actor/outil_actor_bloc.dart';

import 'package:gestion_outillage/presentation/core/appbar_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:transparent_image/transparent_image.dart';

class OutilsAddForm extends StatefulWidget {
  const OutilsAddForm({Key? key}) : super(key: key);
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
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OutilActorBloc, OutilActorState>(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _pickImage(ImageSource.camera);
                      },
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: _pickedImageFile == null
                                  ? MemoryImage(kTransparentImage)
                                  : FileImage(_pickedImageFile!)
                                      as ImageProvider,
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
                                    child: Icon(
                                      Icons.photo_camera,
                                    ),
                                  ),
                                )
                              : Container(),
                        ),
                      ),
                    ),
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
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: buildEmplacement(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
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
                            const Text(
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
                            const Text(
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
                                choiceChipStatut(
                                  "Emprunté",
                                  Colors.red,
                                ),
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
                          shape: const StadiumBorder(side: BorderSide()),
                          label: const Text('Ajouter',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 50),
                          avatar: const Icon(Icons.add),
                          backgroundColor: Colors.green,
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        ActionChip(
                          onPressed: () => Navigator.pop(context, true),
                          avatar: const Icon(Icons.close),
                          shape: const StadiumBorder(side: BorderSide()),
                          label: const Text('Annuler',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 50),
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
            ? const Icon(Icons.check)
            : const Icon(Icons.indeterminate_check_box),
        shape: const StadiumBorder(side: BorderSide()),
        label: Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 15)),
        labelPadding: const EdgeInsets.symmetric(horizontal: 50),
        selected: _selectedEtat == title,
        onSelected: (bool selected) {
          setState(() {
            _selectedEtat = selected ? title : '';
            color = Colors.black;
          });
        },
        backgroundColor: Colors.black26,
        selectedColor: color,
      ),
    );
  }

  Widget choiceChipStatut(String title, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ChoiceChip(
        avatar: _selectedEtat == title ? const Icon(Icons.check) : null,
        shape: const StadiumBorder(side: BorderSide()),
        label: Text(title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 15)),
        labelPadding: const EdgeInsets.symmetric(horizontal: 50),
        selected: _selectedStatut == title,
        onSelected: (bool selected) {
          setState(() {
            _selectedStatut = selected ? title : '';
            color = Colors.black;
          });
        },
        backgroundColor: Colors.black26,
        selectedColor: color,
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
      style: const TextStyle(fontSize: 20),
    );
