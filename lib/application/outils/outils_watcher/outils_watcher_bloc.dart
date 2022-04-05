import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/outils/i_outils_repository.dart';
import 'package:gestion_outillage/infrastructure/outils/outils_dtos.dart';

import 'package:injectable/injectable.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';

part 'outils_watcher_bloc.freezed.dart';
part 'outils_watcher_event.dart';
part 'outils_watcher_state.dart';

@injectable
class OutilsWatcherBloc extends Bloc<OutilsWatcherEvent, OutilsWatcherState> {
  final IOutilsRepository _iOutilsrepository;
  OutilsWatcherBloc(
    this._iOutilsrepository,
  ) : super(const OutilsWatcherState.initial());

  StreamSubscription<Either<OutilsFailure, Stream<List<OutilsDto>>>>?
      _outilsStreamSubscription;

  @override
  Stream<OutilsWatcherState> mapEventToState(
    OutilsWatcherEvent event,
  ) async* {
    yield* event.map(
      watchOutilsStarted: (e) async* {
        yield const OutilsWatcherState.loadInProgress();
        await _outilsStreamSubscription?.cancel();
        _outilsStreamSubscription = _iOutilsrepository.watchAllOutils().listen(
              (failureOrOutils) =>
                  add(OutilsWatcherEvent.outilsReceived(failureOrOutils)),
            );
      },
      outilsReceived: (e) async* {
        yield e.failuresOrOutils.fold(
          (f) => OutilsWatcherState.loadFailure(f),
          (outils) => OutilsWatcherState.loadSuccess(outils),
        );
      },
    );
  }
}
