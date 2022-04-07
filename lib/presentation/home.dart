import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/auth/auth_bloc.dart';

import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';

import 'package:gestion_outillage/infrastructure/outils/outils_repository.dart';

import 'package:gestion_outillage/presentation/home/home_page.dart';

import 'package:gestion_outillage/presentation/layette/layette_page.dart';
import 'categories/categories_page.dart';
import 'core/drawer.dart';

import 'package:auto_route/auto_route.dart';
import 'dashboard/dashboard_page.dart';
import 'routes/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Outils
  Outilsrepository outilsrepository = Outilsrepository();
  // Nav
  late NavDrawerBloc _bloc;
  late Widget _content;
  bool isMenuFixed = false;

  bool isAuth = false;

  final FirebaseAuth _user = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();

    _bloc = NavDrawerBloc();
    _content = _getContentForState(_bloc.state.selectedItem);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) {
                  print("unauthentificated");

                  context.router.replace(const SignInRoute());
                },
                authenticated: (_) {
                  isAuth = true;
                },
                authAsVisitor: (_) {
                  print("AuthAsVisitor");
                  context.router.replace(const HomeRoute());
                },
                orElse: () {},
              );
            },
          ),
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider<NavDrawerBloc>(
              create: (BuildContext context) => _bloc,
            ),
          ],
          child: BlocListener<NavDrawerBloc, NavDrawerState>(
            listener: (BuildContext context, NavDrawerState state) {
              setState(() {
                if (MediaQuery.of(context).size.width < 1000) {
                  isMenuFixed = true;
                }
                _content = _getContentForState(state.selectedItem);
              });
            },
            child: BlocBuilder<NavDrawerBloc, NavDrawerState>(
              builder: (BuildContext context, NavDrawerState state) => Scaffold(
                body: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      isMenuFixed == false
                          ? NavigationDrawerWidget(
                              user: _user,
                            )
                          : Container(),
                      Expanded(
                        child: SafeArea(
                          child: AnimatedSwitcher(
                            switchInCurve: Curves.easeInExpo,
                            switchOutCurve: Curves.easeOutExpo,
                            duration: const Duration(milliseconds: 300),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                  begin: const Offset(0, 0.25),
                                  end: Offset.zero,
                                ).animate(animation),
                                child: child,
                              );
                            },
                            child: _content,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ));
  }

  _getContentForState(NavItem state) {
    FirebaseAuth _user = FirebaseAuth.instance;

    if (_user.currentUser == null) {
      switch (state) {
        // case NavItem.homePage:
        //   return const HomeStartPage();
        // case NavItem.dashboadPage:
        //   return const DashboardPage();
        case NavItem.layettePage:
          return  LayettePage(user: _user,);
        case NavItem.categoryPage:
          return const CategoriesOutilsMesurePage();
        default:
          return const CategoriesOutilsMesurePage();
      }
    } else if (_user.currentUser!.email == "prof@ceff.ch") {
      switch (state) {
        case NavItem.homePage:
          return  HomeStartPage(user: _user,);
        // case NavItem.dashboadPage:
        //   return const DashboardPage();
        case NavItem.layettePage:
          return  LayettePage(user: _user,);
        case NavItem.categoryPage:
          return const CategoriesOutilsMesurePage();
        default:
          return  HomeStartPage(user: _user,);
      }
    } else if (_user.currentUser!.email == "eleve@ceff.ch") {
      switch (state) {
        // case NavItem.homePage:
        //   return const HomeStartPage();
        case NavItem.dashboadPage:
          return  DashboardPage(user: _user,);
        case NavItem.layettePage:
          return  LayettePage(user: _user,);
        case NavItem.categoryPage:
          return const CategoriesOutilsMesurePage();
        default:
          return  DashboardPage(user: _user,);
      }
    }
  }


}
