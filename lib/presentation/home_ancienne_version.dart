// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gestion_outillage/application/auth/auth_bloc.dart';

// import 'package:gestion_outillage/infrastructure/outils/outils_repository.dart';

// import 'core/appbar_widget.dart';

// import 'package:auto_route/auto_route.dart';

// import 'routes/router.gr.dart';

// // ignore: must_be_immutable
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   // Outils
//   // Outilsrepository outilsrepository = Outilsrepository();
//   // Nav
//   // late NavDrawerBloc _bloc;
//   // late Widget _content;
//   // bool isMenuFixed = false;

//   @override
//   Widget build(BuildContext context) {
//     const String query = '';
//     return MultiBlocListener(
//       listeners: [
//         BlocListener<AuthBloc, AuthState>(
//           listener: (context, state) {
//             state.maybeMap(
//               unauthenticated: (_) =>
//                   context.router.replace(const SignInRoute()),
//               orElse: () {},
//             );
//           },
//         ),
//       ],
//       child: AutoTabsScaffold(
//         appBarBuilder: (_, tabsRouter) => PreferredSize(
//             preferredSize: Size.fromHeight(
//               MediaQuery.of(context).size.width * 0.05,
//             ),
//             child: appBarWithSearch(context, query, 'Catégorie page')),
//         routes: const  [
//           HomeStartRoute(),
//           DashboardRoute(),
//           CategoriesOutilsMesureRoute(),
//           LayetteRoute(),
//         ],
//         bottomNavigationBuilder: (_, tabsRouter) {
//           // return Row(
//           //   children: [
//           //     NavigationRail(
//           //       selectedIndex: tabsRouter.activeIndex,
//           //       onDestinationSelected: tabsRouter.setActiveIndex,
//           //       destinations: const [
//           //         NavigationRailDestination(
//           //           icon: Icon(Icons.home),
//           //           label: Text('Home'),
//           //         ),
//           //         NavigationRailDestination(
//           //           icon: Icon(Icons.dashboard),
//           //           label: Text('Dashboard'),
//           //         ),
//           //         NavigationRailDestination(
//           //           icon: Icon(Icons.construction),
//           //           label: Text('Outils'),
//           //         ),
//           //         NavigationRailDestination(
//           //           icon: Icon(Icons.layers),
//           //           label: Text('Layette'),
//           //         ),
//           //       ],
//           //     ),
//           //     Expanded(child: Text("aa")),
//           //   ],
//           // );

//           return BottomNavigationBar(
//               currentIndex: tabsRouter.activeIndex,
//               onTap: tabsRouter.setActiveIndex,
//               // destinations:
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home, color: Colors.black),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.dashboard, color: Colors.black),
//                   label: 'Dashboard',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.construction, color: Colors.black),
//                   label: 'Outils',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.layers, color: Colors.black),
//                   label: 'Layette',
//                 )
//               ]);
//         },
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gestion_outillage/application/auth/auth_bloc.dart';

// import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';

// import 'package:gestion_outillage/infrastructure/outils/outils_repository.dart';

// import 'package:gestion_outillage/presentation/home/home_page.dart';

// import 'package:gestion_outillage/presentation/layette/layette_page.dart';
// import 'categories/categories_page.dart';
// import 'core/drawer.dart';

// import 'package:auto_route/auto_route.dart';
// import 'dashboard/dashboard_page.dart';
// import 'routes/router.gr.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // Outils
//   Outilsrepository outilsrepository = Outilsrepository();
//   // Nav
//   late NavDrawerBloc _bloc;
//   late Widget _content;
//   bool isMenuFixed = false;

//   // @override
//   // void initState() {
//   //   super.initState();

//   //   _bloc = NavDrawerBloc();
//   //   _content = _getContentForState(_bloc.state.selectedItem);
//   // }

//   // @override
//   // void dispose() {
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocListener(
//         listeners: [
//           BlocListener<AuthBloc, AuthState>(
//             listener: (context, state) {
//               state.maybeMap(
//                 unauthenticated: (_) =>
//                     context.router.replace(const SignInRoute()),
//                 orElse: () {},
//               );
//             },
//           ),
//         ],
//         child: MultiBlocProvider(
//           providers: [
//             BlocProvider<NavDrawerBloc>(
//               create: (BuildContext context) => _bloc,
//             ),
//           ],
//           child: BlocListener<NavDrawerBloc, NavDrawerState>(
//             listener: (BuildContext context, NavDrawerState state) {
//               // setState(() {
//               //   if (MediaQuery.of(context).size.width < 1000) {
//               //     isMenuFixed = true;
//               //   }
//               _content = _getContentForState(state.selectedItem);
//               // });
//             },
//             child: BlocBuilder<NavDrawerBloc, NavDrawerState>(
//               builder: (BuildContext context, NavDrawerState state) => Scaffold(
//                 body: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       isMenuFixed == false
//                           ? NavigationDrawerWidget()
//                           : Container(),
//                       Expanded(
//                         child: SafeArea(
//                           child: AnimatedSwitcher(
//                             switchInCurve: Curves.easeInExpo,
//                             switchOutCurve: Curves.easeOutExpo,
//                             duration: const Duration(milliseconds: 300),
//                             transitionBuilder:
//                                 (Widget child, Animation<double> animation) {
//                               return SlideTransition(
//                                 position: Tween<Offset>(
//                                   begin: const Offset(0, 0.25),
//                                   end: Offset.zero,
//                                 ).animate(animation),
//                                 child: child,
//                               );
//                             },
//                             child: _content,
//                           ),
//                         ),
//                       ),
//                     ]),
//               ),
//             ),
//           ),
//         ));
//   }

//   _getContentForState(NavItem state) {
//     switch (state) {
//       case NavItem.homePage:
//         return const HomeStartPage();
//       case NavItem.dashboadPage:
//         return const DashboardPage();
//       case NavItem.layettePage:
//         return const LayettePage();
//       case NavItem.categoryPage:
//         return const CategoriesOutilsMesurePage();
//       default:
//         return const HomePage();
//     }
//   }
// }

