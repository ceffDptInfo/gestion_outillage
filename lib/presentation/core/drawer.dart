import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';
import 'package:gestion_outillage/presentation/routes/router.gr.dart';

import '../../application/auth/auth_bloc.dart';

// ignore: must_be_immutable
class NavigationDrawerWidget extends StatelessWidget {
  FirebaseAuth user;

  NavigationDrawerWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(context) {
    // return BlocBuilder<NavDrawerBloc, NavDrawerState>(
    //     builder: (context, NavDrawerState state) {

    String? email;
    if (user.currentUser != null) {
      email = user.currentUser!.email;
    } else {
      email = "";
    }

    return SafeArea(
      // right: false,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.18,
        color: Theme.of(context).backgroundColor,
        child: Drawer(
          // elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: const BorderRadius.only(
                // topRight: Rad-0
                // us.circular(20),
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
                      // Divider(),
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
                      // color: Colors.grey[600],
                      // width: Me,
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        // itemCount: isAuth == true
                        //     ? _listItemsAuth.length
                        //     : _listItemsVisitor.length,
                        // itemCount: user.currentUser == null
                        // ? _listItemsVisitor.length
                        // : _listItemsAuth.length,
                        itemCount: email == "prof@ceff.ch"
                            ? _listItemsProf.length
                            : email == "eleve@ceff.ch"
                                ? _listItemsEleve.length
                                : _listItemsVisitor.length,
                        itemBuilder: (context, index) =>
                            BlocBuilder<NavDrawerBloc, NavDrawerState>(builder:
                                (BuildContext context, NavDrawerState state) {
                          return _buildItem(
                              // isAuth == true
                              //     ? _listItemsAuth[index]
                              //     : _listItemsVisitor[index],
                              // user.currentUser == null
                              //     ? _listItemsVisitor[index]
                              //     : _listItemsAuth[index],
                              email == "prof@ceff.ch"
                                  ? _listItemsProf[index]
                                  : email == "eleve@ceff.ch"
                                      ? _listItemsEleve[index]
                                      : _listItemsVisitor[index],
                              state);
                          // _listItems[index].title != 'Layette'
                          //     ? _buildItem(_listItems[index], state)
                          //     : items(context, _listItems[index], state);
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
    // });
  }

  Widget _buildItem(_NavigationItem data, NavDrawerState state) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Card(
            color: Colors.grey[600],
            // shape: const ContinuousRectangleBorder(
            //     borderRadius: BorderRadius.zero),
            borderOnForeground: true,
            elevation: 0,
            margin: EdgeInsets.zero,
            child: Builder(
              builder: (BuildContext context) => Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
                child: Container(
                  decoration: data.item == state.selectedItem
                      ? BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          // border: Border.all(color: Colors.blueGrey, width: 10),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        )
                      : const BoxDecoration(),
                  child: ListTile(
                    // trailing: notifBadge(),
                    title: Text(
                      data.title,
                      style: TextStyle(
                        color: data.item == state.selectedItem
                            ? Colors.black
                            : Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    leading:

                        // data.icons,

                        data.title != 'Layette' ? data.icons : data.icon,
                    onTap: () => _handleItemClick(context, data.item),
                  ),
                ),
              ),
            ),
          ),
        ),
        // data.header == true
        //     ? Positioned(right: 10, top: 10, child: notifBadge())
        //     : Container(),
      ],
    );
  }

  void _handleItemClick(
    BuildContext context,
    NavItem item,
  ) {
    BlocProvider.of<NavDrawerBloc>(context).add(NavigateTo(item));
  }

  Widget items(
          BuildContext context, _NavigationItem data, NavDrawerState state) =>
      SingleChildScrollView(
        child: ExpansionTile(
          iconColor:
              data.item == state.selectedItem ? Colors.white : Colors.black,
          backgroundColor: data.item == state.selectedItem
              ? Colors.grey[200]
              : Theme.of(context).backgroundColor,
          title: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                // height: MediaQuery.of(context).size.height * 0.05,
                child: ImageIcon(
                  const AssetImage('assets/images/imagerandom/layette.png'),
                  color: data.item == state.selectedItem
                      ? Colors.white
                      : Colors.grey[800],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 32),
                child: (Text(
                  listLay[0],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ],
          ),
          onExpansionChanged: (value) {},
          children: [
            SizedBox(
              height: double.maxFinite,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listTir.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ExpansionTile(title: Text(listTir[index]), children: [
                          SizedBox(
                            height: double.maxFinite,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: listCat.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      ExpansionTile(
                                          title: Text(listCat[index]),
                                          children: const []),
                                      const Divider(),
                                    ],
                                  );
                                }),
                          )
                        ]),
                        const Divider(),
                      ],
                    );
                  }),
            )
          ],
        ),
      );

  final List<_NavigationItem> _listItemsProf = [
    _NavigationItem(
      NavItem.homePage,
      "Home",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(
        Icons.house,
        // color:? Colors.white : Colors.black,
      ),
    ),
    _NavigationItem(
      NavItem.categoryPage,
      "Outils",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(Icons.construction),
    ),
    _NavigationItem(
        NavItem.layettePage,
        "Layette",
        const ImageIcon(
          AssetImage('assets/images/image_outils/layette.png'),
        ),
        const Icon(null)),
  ];

  final List<_NavigationItem> _listItemsVisitor = [
    // _NavigationItem(
    //   NavItem.homePage,
    //   "Home",
    //   const ImageIcon(AssetImage(''), color: Colors.white),
    //   const Icon(
    //     Icons.house,
    //     // color:? Colors.white : Colors.black,
    //   ),
    // ),
    _NavigationItem(
      NavItem.categoryPage,
      "Outils",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(Icons.construction),
    ),
    _NavigationItem(
        NavItem.layettePage,
        "Layette",
        const ImageIcon(
          AssetImage('assets/images/image_outils/layette.png'),
        ),
        const Icon(null)),
  ];

  final List<_NavigationItem> _listItemsEleve = [
    _NavigationItem(
      NavItem.dashboadPage,
      "Tableau de bord",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(Icons.dashboard),
    ),
    _NavigationItem(
      NavItem.categoryPage,
      "Outils",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(Icons.construction),
    ),
    _NavigationItem(
        NavItem.layettePage,
        "Layette",
        const ImageIcon(
          AssetImage('assets/images/image_outils/layette.png'),
        ),
        const Icon(null)),
  ];
}

class _NavigationItem {
  // final bool header;
  final NavItem item;
  final String title;
  final ImageIcon icon;
  final Icon icons;
  _NavigationItem(this.item, this.title, this.icon, this.icons);
}


