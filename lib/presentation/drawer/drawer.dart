import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';
import 'package:gestion_outillage/presentation/drawer/navigation_item.dart';
import 'package:gestion_outillage/presentation/drawer/drawer_item.dart';

import 'package:gestion_outillage/presentation/routes/router.gr.dart';

import '../../application/auth/auth_bloc.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final FirebaseAuth user;

  const NavigationDrawerWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(context) {
    String? email;

    if (user.currentUser != null) {
      email = user.currentUser!.email;
    } else {
      email = "";
    }

    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.18,
        color: Theme.of(context).backgroundColor,
        child: Drawer(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
            ),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ceff.png",
                        height: 100,
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    email != "" ? Text("Utilisateur : $email") : Container(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(80),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: email == "prof@ceff.ch"
                            ? listItemsProf.length
                            : email == "eleve@ceff.ch"
                                ? listItemsEleve.length
                                : listItemsVisitor.length,
                        itemBuilder: (context, index) =>
                            BlocBuilder<NavDrawerBloc, NavDrawerState>(builder:
                                (BuildContext context, NavDrawerState state) {
                          return ItemDrawer(
                              email == "prof@ceff.ch"
                                  ? listItemsProf[index]
                                  : email == "eleve@ceff.ch"
                                      ? listItemsEleve[index]
                                      : listItemsVisitor[index],
                              state);
                        }),
                      ),
                    ),
                    user.currentUser == null
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed: () {
                                  context.router.replace(const SignInRoute());
                                },
                                child: const Text(
                                  'Se connecter',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 64.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: TextButton(
                                onPressed: () {
                                  context
                                      .read<AuthBloc>()
                                      .add(const AuthEvent.signedOut());
                                  context.router.replace(const SignInRoute());
                                },
                                child: const Text(
                                  'Se déconnecter',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
