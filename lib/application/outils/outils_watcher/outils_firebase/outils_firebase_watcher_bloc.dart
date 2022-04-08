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

part 'outils_firebase_watcher_bloc.freezed.dart';
part 'outils_firebase_watcher_event.dart';
part 'outils_firebase_watcher_state.dart';

@injectable
class OutilsFirebaseWatcherBloc extends Bloc<OutilsFirebaseWatcherEvent, OutilsFirebaseWatcherState> {
  final IOutilsRepository _iOutilsrepository;
  OutilsFirebaseWatcherBloc(
    this._iOutilsrepository,
  ) : super(const OutilsFirebaseWatcherState.initial());

  StreamSubscription<Either<OutilsFailure, KtList<Outils>>>?
      _outilsStreamSubscription;

  @override
  Stream<OutilsFirebaseWatcherState> mapEventToState(
    OutilsFirebaseWatcherEvent event,
  ) async* {
    yield* event.map(
      watchOutilsStarted: (e) async* {
        yield const OutilsFirebaseWatcherState.loadInProgress();
        await _outilsStreamSubscription?.cancel();
        _outilsStreamSubscription = _iOutilsrepository.watchOutilFromFirebase().listen(
              (failureOrOutils) =>
                  add(OutilsFirebaseWatcherEvent.outilsReceived(failureOrOutils)),
            );
      },
      outilsReceived: (e) async* {
        yield e.failuresOrOutils.fold(
          (f) => OutilsFirebaseWatcherState.loadFailure(f),
          (outils) => OutilsFirebaseWatcherState.loadSuccess(outils),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _outilsStreamSubscription?.cancel();
    return super.close();
  }
}
