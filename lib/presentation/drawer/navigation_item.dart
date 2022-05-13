import 'package:flutter/material.dart';

import '../../application/nav_drawer/nav_drawer_bloc.dart';

class NavigationItem {
  final NavItem item;
  final String title;
  final ImageIcon icon;
  final Icon icons;
  NavigationItem(this.item, this.title, this.icon, this.icons);
}

final List<NavigationItem> listItemsProf = [
  NavigationItem(
    NavItem.homePage,
    "Home",
    const ImageIcon(AssetImage(''), color: Colors.white),
    const Icon(
      Icons.house,
    ),
  ),
  NavigationItem(
    NavItem.categoryPage,
    "Outils",
    const ImageIcon(AssetImage(''), color: Colors.white),
    const Icon(Icons.construction),
  ),
  NavigationItem(
      NavItem.layettePage,
      "Layette",
      const ImageIcon(
        AssetImage('assets/images/image_outils/layette.png'),
      ),
      const Icon(null)),
];

final List<NavigationItem> listItemsVisitor = [
  NavigationItem(
    NavItem.categoryPage,
    "Outils",
    const ImageIcon(AssetImage(''), color: Colors.white),
    const Icon(Icons.construction),
  ),
  NavigationItem(
      NavItem.layettePage,
      "Layette",
      const ImageIcon(
        AssetImage('assets/images/image_outils/layette.png'),
      ),
      const Icon(null)),
];

final List<NavigationItem> listItemsEleve = [
  NavigationItem(
    NavItem.dashboadPage,
    "Tableau de bord",
    const ImageIcon(AssetImage(''), color: Colors.white),
    const Icon(Icons.dashboard),
  ),
  NavigationItem(
    NavItem.categoryPage,
    "Outils",
    const ImageIcon(AssetImage(''), color: Colors.white),
    const Icon(Icons.construction),
  ),
  NavigationItem(
      NavItem.layettePage,
      "Layette",
      const ImageIcon(
        AssetImage('assets/images/image_outils/layette.png'),
      ),
      const Icon(null)),
];
