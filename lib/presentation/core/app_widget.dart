import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gestion_outillage/application/auth/auth_bloc.dart';

import 'package:gestion_outillage/application/nav_drawer/nav_drawer_bloc.dart';
import 'package:gestion_outillage/application/outils/outil_actor/outil_actor_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/outils_firebase/outils_firebase_watcher_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/outils_watcher_bloc.dart';
import 'package:gestion_outillage/application/outils/outils_watcher/user_outils_watcher/user_outils_watcher_bloc.dart';

import '../routes/router.gr.dart';
import '../../injection.dart';

Map<int, Color> color = {
  50: const Color(0xFFFAFAFA),
  100: const Color(0xFFF5F5F5),
  200: const Color(0xFFEEEEEE),
  300: const Color(0xFFE0E0E0),
  350: const Color(0xFFD6D6D6),
  400: const Color(0xFFBDBDBD),
  500: const Color(0xFF9e9e9e),
  600: const Color(0xFF757575),
  700: const Color(0xFF616161),
  800: const Color(0xFF424242),
  850: const Color(0xFF303030),
  900: const Color(0xFF212121),
};
// Grey Hex Codes: #605E5F | #7E7D7F | #8E8E8E | #A9A8AA | #B8B8BC

MaterialColor outilsGrey = MaterialColor(0xFF7E7D7F, color);
MaterialColor outilsDarkGrey = MaterialColor(0xFFA9A8AA, color);
MaterialColor outilsLightGrey = MaterialColor(0xFFB8B8BC, color);

MaterialColor outilsBlue = MaterialColor(0xFF46c7f4, color);
Color colorPrimary = const Color.fromRGBO(70, 199, 244, 1);

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OutilsWatcherBloc>()
            ..add(const OutilsWatcherEvent.watchOutilsStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<OutilsFirebaseWatcherBloc>()
            ..add(const OutilsFirebaseWatcherEvent.watchOutilsStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<UserOutilsWatcherBloc>()
            ..add(
              const UserOutilsWatcherEvent.watchUserOutilsStarted(),
            ),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(create: (context) => getIt<NavDrawerBloc>()),
        BlocProvider(create: (context) => getIt<OutilActorBloc>()),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Gestion Outillage',
        debugShowCheckedModeBanner: false,
        localeListResolutionCallback: (locales, supportedLocales) {
          if (locales != null) {
            for (final locale in locales) {
              for (final supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale.languageCode) {
                  return supportedLocale;
                }
              }
            }
          }
          return supportedLocales.first;
        },
        theme: ThemeData(
          // cardColor: Colors.grey[200],
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.blue,
          ),

          // form
          backgroundColor: Colors.grey[200],
          unselectedWidgetColor: Colors.black,
          fontFamily: 'Open sans',
          textTheme: TextTheme(
            subtitle1: const TextStyle(color: Colors.black),
            headline1: TextStyle(color: colorPrimary),
            headline2: TextStyle(color: colorPrimary),
            headline3: TextStyle(color: colorPrimary),
            headline4: TextStyle(color: colorPrimary),
            headline5: TextStyle(color: colorPrimary),
            headline6: TextStyle(color: colorPrimary),
          ),
          scaffoldBackgroundColor: Colors.grey[200],

          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: outilsBlue,
          )
              .copyWith(secondary: Colors.grey[200])
              .copyWith(secondary: Colors.grey[600]),
        ),
      ),
    );
  }
}
