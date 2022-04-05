import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/outils/i_outils_repository.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';

import 'package:injectable/injectable.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:kt_dart/kt.dart';

part 'user_outils_watcher_bloc.freezed.dart';
part 'user_outils_watcher_event.dart';
part 'user_outils_watcher_state.dart';

@injectable
class UserOutilsWatcherBloc
    extends Bloc<UserOutilsWatcherEvent, UserOutilsWatcherState> {
  final IOutilsRepository _iOutilsrepository;
  UserOutilsWatcherBloc(
    this._iOutilsrepository,
  ) : super(const UserOutilsWatcherState.initial());

  StreamSubscription<Either<OutilsFailure, KtList<Outils>>>?
      _outilsStreamSubscription;

  @override
  Stream<UserOutilsWatcherState> mapEventToState(
    UserOutilsWatcherEvent event,
  ) async* {
    yield* event.map(
      watchUserOutilsStarted: (e) async* {
        yield const UserOutilsWatcherState.loadInProgress();
        await _outilsStreamSubscription?.cancel();
        _outilsStreamSubscription =
            _iOutilsrepository.watchBorrowedOutils().listen(
                  (failureOrUserOutils) => add(
                      UserOutilsWatcherEvent.userOutilsReceived(
                          failureOrUserOutils)),
                );
      },
      userOutilsReceived: (e) async* {
        yield e.failureOrUserOutils.fold(
          (f) => UserOutilsWatcherState.loadFailure(f),
          (outils) => UserOutilsWatcherState.loadSuccess(outils),
        );
      },
    );
  }
}
