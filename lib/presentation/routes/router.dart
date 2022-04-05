import 'package:auto_route/auto_route.dart';
import 'package:gestion_outillage/presentation/categories/categories_page.dart';
import 'package:gestion_outillage/presentation/dashboard/dashboard_page.dart';
import 'package:gestion_outillage/presentation/home.dart';
import 'package:gestion_outillage/presentation/home/home_page.dart';
import 'package:gestion_outillage/presentation/layette/layette_page.dart';
import 'package:gestion_outillage/presentation/outils_add/outils_add_page.dart';
import 'package:gestion_outillage/presentation/outils_detail/outils_mesure_list_detail_page.dart';
import 'package:gestion_outillage/presentation/sign_in/sign_in_page.dart';
import 'package:gestion_outillage/presentation/splash/splash_page.dart';
import 'package:gestion_outillage/presentation/tiroir/tiroir_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 400,
      page: SignInPage,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: 400,
      page: HomePage,
      children: [
        AutoRoute(page: HomeStartPage),
        AutoRoute(page: LayettePage),
        AutoRoute(page: DashboardPage),
        AutoRoute(page: TiroirPage),
        AutoRoute(page: CategoriesOutilsMesurePage),
        AutoRoute(page: OutilsMesureListDetailPage),
        AutoRoute(page: OutilsAddPage, fullscreenDialog: true),
      ],
    ),
  ],
)
class $AppRouter {}
