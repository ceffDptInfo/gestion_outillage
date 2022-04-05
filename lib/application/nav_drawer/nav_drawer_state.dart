part of 'nav_drawer_bloc.dart';

// @freezed
class NavDrawerState {
  final NavItem selectedItem;

  const NavDrawerState(this.selectedItem);
}

enum NavItem {
  homePage,
  dashboadPage,
  layettePage,
  categoryPage,
}
