part of 'nav_drawer_bloc.dart';

// @freezed
abstract class NavDrawerEvent {
  const NavDrawerEvent();
}

class NavigateTo extends NavDrawerEvent {
  final NavItem destination;
  const NavigateTo(this.destination);
}
