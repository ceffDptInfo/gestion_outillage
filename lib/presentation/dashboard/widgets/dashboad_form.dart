import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/application/outils/outils_watcher/user_outils_watcher/user_outils_watcher_bloc.dart';

import 'list_view_mes_outils.dart';

class DashboardForm extends StatelessWidget {
  final FirebaseAuth auth;
  const DashboardForm({
    Key? key,
    required this.auth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return BlocBuilder<UserOutilsWatcherBloc, UserOutilsWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          loadFailure: (value) => const Center(
            child: Text("Erreur de chargement"),
          ),
          loadInProgress: (value) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (outils) {
            return Row(
              children: [
                Expanded(
                  child: SafeArea(
                    child: Scaffold(
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            ListViewMesOutils(
                                outils: outils.listOutils,
                                width: width,
                                height: height,
                                title: 'Mes outils empruntés',
                                user: auth),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
