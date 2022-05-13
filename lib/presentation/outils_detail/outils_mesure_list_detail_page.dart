import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/presentation/outils_detail/widgets/chip_info.dart';
import 'package:photo_view/photo_view.dart';

import 'package:gestion_outillage/application/outils/outil_actor/outil_actor_bloc.dart';
import 'package:gestion_outillage/domain/core/value_objects.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';

import '../../infrastructure/core/data.dart';
import 'widgets/detail_image.dart';
import 'widgets/grid_emplacement.dart';
import 'widgets/outil_information.dart';

class OutilsMesureListDetailPage extends StatefulWidget {
  final Outils outil;
  final FirebaseAuth user;

  const OutilsMesureListDetailPage(this.outil, this.user, {Key? key})
      : super(key: key);

  @override
  State<OutilsMesureListDetailPage> createState() =>
      _OutilsMesureListDetailPageState();
}

class _OutilsMesureListDetailPageState
    extends State<OutilsMesureListDetailPage> {
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

  bool isBroken = false;
  bool isDispo = false;

  @override
  void initState() {
    super.initState();
    if (widget.outil.etat == "Usagé") {
      isBroken = true;
    } else {
      isBroken = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Center(
          child: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ),
      floatingActionButton: widget.user.currentUser != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (widget.user.currentUser!.email!.contains("eleve")) ...[
                  if (widget.outil.status == "Emprunté") ...[
                    FloatingActionButton.extended(
                      heroTag: 'Fonctionnel',
                      onPressed: () {
                        setState(() {
                          isBroken = !isBroken;
                        });
                      },
                      label: Text(isBroken ? "Fonctionnel" : "Non-fonctionnel"),
                      backgroundColor:
                          !isBroken ? Colors.orange.shade200 : Colors.orange,
                      elevation: 0,
                    )
                  ],
                ],
                const SizedBox(
                  width: 20,
                ),
                if (widget.user.currentUser!.email!.contains("eleve")) ...[
                  FloatingActionButton.extended(
                    heroTag: 'Disponible',
                    onPressed: () {
                      setState(
                        () {
                          if (widget.outil.status == "Emprunté") {
                            if (isBroken) {
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
                      heroTag: 'Fonctionnel Prof',
                      onPressed: () {
                        setState(() {
                          isBroken = !isBroken;
                        });
                      },
                      label: Text(isBroken ? "Fonctionnel" : "Non-Fonctionnel"),
                      backgroundColor:
                          !isBroken ? Colors.orange.shade200 : Colors.orange,
                      foregroundColor: Colors.black,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton.extended(
                      heroTag: 'Usagé',
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
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2.8,
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.transparent,
                      child: Stack(
                        children: [
                          GestureDetector(
                            child: PhotoView(
                              imageProvider: AssetImage(
                                  'assets/images/image_outils/' +
                                      widget.outil.nameImg.toString()),
                              backgroundDecoration: const BoxDecoration(
                                  color: Colors.transparent),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return DetailImage(
                                  widget.outil.nameImg,
                                );
                              }));
                            },
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        OutilInformations(
                          title: "Désignation",
                          info: widget.outil.designation,
                          color: Colors.black,
                        ),
                        widget.outil.dimangle1 != "0" ||
                                widget.outil.dimangle2 != "0"
                            ? OutilInformations(
                                title: "Dimension °",
                                info: widget.outil.dimangle1! +
                                    " / " +
                                    widget.outil.dimangle2!,
                                color: Colors.black,
                              )
                            : Container(),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.outil.dimmm1 != "0" || widget.outil.dimmm2 != "0"
                            ? OutilInformations(
                                title: "Dimension [mm]",
                                info: widget.outil.dimmm1! +
                                    " / " +
                                    widget.outil.dimmm2!,
                                color: Colors.black,
                              )
                            : Container(),
                        widget.outil.complement != ""
                            ? OutilInformations(
                                title: "Complément",
                                info: widget.outil.complement,
                                color: Colors.black,
                              )
                            : Container(),
                      ],
                    ),

                    const Divider(),
                    Column(
                      children: [
                        widget.outil.etat != ""
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 100),
                                    child: const Text(
                                      "Etat",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  ChipInfo(
                                    etat: widget.outil.etat,
                                    status: widget.outil.status,
                                  )
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
                            ChipInfo(
                              etat: '',
                              status: widget.outil.status,
                            )
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
                      child: OutilInformations(
                        title: "Emplacement",
                        info: widget.outil.emplacement,
                        color: Colors.black,
                      ),
                    ),
                    const GridEmplacement(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
