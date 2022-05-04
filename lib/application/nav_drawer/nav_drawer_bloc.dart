import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

// part 'nav_drawer_bloc.freezed.dart';
part 'nav_drawer_event.dart';
part 'nav_drawer_state.dart';

@injectable
class NavDrawerBloc extends Bloc<NavDrawerEvent, NavDrawerState> {
  NavDrawerBloc() : super(const NavDrawerState(NavItem.homePage)) {
    on<NavigateTo>((event, emit) async {
      if (event.destination != state.selectedItem) {
        emit(NavDrawerState(event.destination));
      }
    });
  }
}
