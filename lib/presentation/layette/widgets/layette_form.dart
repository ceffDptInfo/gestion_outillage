import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/outils/outils_watcher/outils_watcher_bloc.dart';
import 'table_body.dart';
import 'table_head.dart';

class LayetteForm extends StatefulWidget {
  final FirebaseAuth user;
  const LayetteForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  State<LayetteForm> createState() => _LayetteFormState();
}

class _LayetteFormState extends State<LayetteForm> {
  String index = "";
  String queryCat = "";
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<OutilsWatcherBloc, OutilsWatcherState>(
        builder: (context, state) {
      return state.maybeMap(
          loadFailure: (value) => const Center(
                child: Text("Erreur de chargement"),
              ),
          loadInProgress: (value) => const Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (outils) {
            return Scaffold(
              body: Padding(
                padding:
                    const EdgeInsets.only(right: 4.0, left: 4.0, top: 16.0),
                child: Container(
                  color: Colors.grey[300],
                  width: width,
                  height: height,
                  child: Column(
                    children: [
                      const TableWidget(),
                      Expanded(
                        child: ListView.builder(
                            itemCount: outils.listOutils.size,
                            itemBuilder: (context, index) {
                              return TableBody(
                                outil: outils.listOutils[index],
                                user: widget.user,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          orElse: () => Container());
    });
  }
}
