import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';
import 'package:gestion_outillage/infrastructure/core/data.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final List<_NavigationItem> _listItems = [
    _NavigationItem(
      false,
      NavItem.homePage,
      "Home",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(
        Icons.house,
        // color:? Colors.white : Colors.black,
      ),
    ),
    _NavigationItem(
      true,
      NavItem.dashboadPage,
      "Tableau de bord",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(Icons.dashboard),
    ),
    _NavigationItem(
      false,
      NavItem.categoryPage,
      "Outils",
      const ImageIcon(AssetImage(''), color: Colors.white),
      const Icon(Icons.construction),
    ),
    _NavigationItem(
        false,
        NavItem.layettePage,
        "Layette",
        const ImageIcon(
          AssetImage('assets/images/image_outils/layette.png'),
        ),
        const Icon(null)),

    // _NavigationItem(
    //     false,
    //     NavItem.layettePage,
    //     "Layette",
    //     ImageIcon(AssetImage('assets/images/imagerandom/layette.png'),
    //         color: Colors.white),
    //     Icon(null)),
  ];

  NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    // return BlocBuilder<NavDrawerBloc, NavDrawerState>(
    //     builder: (context, NavDrawerState state) {

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
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(80),
                        ),
                      ),
                      // color: Colors.grey[600],
                      // width: Me,
                      height: MediaQuery.of(context).size.height * 1,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: _listItems.length,
                        itemBuilder: (context, index) =>
                            BlocBuilder<NavDrawerBloc, NavDrawerState>(builder:
                                (BuildContext context, NavDrawerState state) {
                          return _buildItem(_listItems[index], state);
                          // _listItems[index].title != 'Layette'
                          //     ? _buildItem(_listItems[index], state)
                          //     : items(context, _listItems[index], state);
                        }),
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
            shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.zero),
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
        data.header == true
            ? Positioned(right: 10, top: 10, child: notifBadge())
            : Container(),
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
}

Widget notifBadge() {
  return Badge(
    badgeColor: Colors.red,
    badgeContent: const Text(
      '4',
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    // child: Icon(Icons.person, size: 30),
  );
}

class _NavigationItem {
  final bool header;
  final NavItem item;
  final String title;
  final ImageIcon icon;
  final Icon icons;
  _NavigationItem(this.header, this.item, this.title, this.icon, this.icons);
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';
// import 'package:gestion_outillage/infrastructure/core/data.dart';

// class NavigationDrawerWidget extends StatelessWidget {
//   final List<_NavigationItem> _listItems = [
//     _NavigationItem(
//         false,
//         NavItem.homePage,
//         "Home",
//         ImageIcon(AssetImage(''), color: Colors.white),
//         Icon(Icons.house, color: Colors.white)),
//     _NavigationItem(
//       false,
//       NavItem.profilePage,
//       "Profil",
//       ImageIcon(AssetImage(''), color: Colors.white),
//       Icon(Icons.person, color: Colors.white),
//     ),
//     _NavigationItem(
//         false,
//         NavItem.layettePage,
//         "Layette",
//         ImageIcon(AssetImage('assets/images/imagerandom/layette.png'),
//             color: Colors.white),
//         Icon(null)),
//   ];

//   @override
//   Widget build(context) {
//     // return BlocBuilder<NavDrawerBloc, NavDrawerState>(
//     //     builder: (context, NavDrawerState state) {

//     return SafeArea(
//       // right: false,
//       child: Container(
//         color: Colors.grey[600],
//         width: MediaQuery.of(context).size.width * 0.2,
//         child: Drawer(
//           elevation: 8,
//           child: Container(
//             color: Colors.grey[600],
//             child: ListView(
//               children: [
//                 Container(
//                   // height: MediaQuery.of(context).size.width * 0.2,
//                   child: DrawerHeader(
//                     decoration: BoxDecoration(
//                         // color: Colors.grey[600],
//                         ),
//                     child: Column(
//                       children: [
//                         Image.asset(
//                           "assets/images/ceff.png",
//                           height: 100,
//                         ),
//                         // Divider(),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Container(
//                       color: Colors.grey[600],
//                       // width: Me,
//                       height: MediaQuery.of(context).size.height * 1,
//                       child: ListView.builder(
//                         padding: EdgeInsets.all(0),
//                         itemCount: _listItems.length,
//                         itemBuilder: (context, index) =>
//                             BlocBuilder<NavDrawerBloc, NavDrawerState>(
//                           builder:
//                               (BuildContext context, NavDrawerState state) =>
//                                   _buildItem(_listItems[index], state),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//     // });
//   }

//   Widget _buildItem(_NavigationItem data, NavDrawerState state) => Container(
//         margin: EdgeInsets.only(bottom: 10),
//         child: data.title == 'Layette'
//             ? items()
//             : Card(
//                 color: Colors.grey[600],
//                 shape:
//                     ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
//                 borderOnForeground: true,
//                 elevation: 0,
//                 margin: EdgeInsets.zero,
//                 child: Builder(
//                   builder: (BuildContext context) => Padding(
//                     padding: EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: data.item == state.selectedItem
//                           ? BoxDecoration(
//                               color: Colors.blueGrey,
//                               // border: Border.all(color: Colors.blueGrey, width: 10),
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(20),
//                               ),
//                             )
//                           : BoxDecoration(),
//                       child: ListTile(
//                         title: Text(
//                           data.title,
//                           style: TextStyle(
//                             color: data.item == state.selectedItem
//                                 ? Colors.white
//                                 : Colors.white,
//                             fontSize: 18,
//                           ),
//                         ),
//                         leading:
//                             data.title != 'Layette' ? data.icons : data.icon,
//                         onTap: () => _handleItemClick(context, data.item),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//       );

//   void _handleItemClick(BuildContext context, NavItem item) {
//     BlocProvider.of<NavDrawerBloc>(context).add(NavigateTo(item));
//   }

//   Widget items() => SingleChildScrollView(
//         child: ExpansionTile(
//           iconColor: Colors.white,
//           title: Row(
//             children: [
//               Container(
//                 // height: MediaQuery.of(context).size.height * 0.05,
//                 child: ImageIcon(
//                   AssetImage('assets/images/imagerandom/layette.png'),
//                   color: Colors.white,
//                 ),
//               ),
//               Container(
//                 child: (Text(
//                   listLay[2],
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 )),
//               ),
//             ],
//           ),
//           onExpansionChanged: (value) {},
//           children: [
//             Container(
//               height: double.maxFinite,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: listTir.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         ExpansionTile(
//                             title: Container(child: Text(listTir[index])),
//                             children: [
//                               Container(
//                                 height: double.maxFinite,
//                                 child: ListView.builder(
//                                     shrinkWrap: true,
//                                     itemCount: listCat.length,
//                                     itemBuilder: (context, index) {
//                                       return Column(
//                                         children: [
//                                           ExpansionTile(
//                                               title: Container(
//                                                   child: Text(listCat[index])),
//                                               children: []),
//                                           Divider(),
//                                         ],
//                                       );
//                                     }),
//                               )
//                             ]),
//                         Divider(),
//                       ],
//                     );
//                   }),
//             )
//           ],
//         ),
//       );
// }

// class _NavigationItem {
//   final bool header;
//   final NavItem item;
//   final String title;
//   final ImageIcon icon;
//   final Icon icons;
//   _NavigationItem(this.header, this.item, this.title, this.icon, this.icons);
// }
