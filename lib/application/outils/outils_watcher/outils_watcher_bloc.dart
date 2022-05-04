import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/outils/i_outils_repository.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';

import 'package:injectable/injectable.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:kt_dart/kt.dart';

part 'outils_watcher_bloc.freezed.dart';
part 'outils_watcher_event.dart';
part 'outils_watcher_state.dart';

@injectable
class OutilsWatcherBloc extends Bloc<OutilsWatcherEvent, OutilsWatcherState> {
  final IOutilsRepository _iOutilsrepository;
  StreamSubscription<Either<OutilsFailure, KtList<Outils>>>?
      _outilsStreamSubscription;
  OutilsWatcherBloc(
    this._iOutilsrepository,
  ) : super(const OutilsWatcherState.initial()) {
    on<_WatchOutilsStarted>((event, emit) async {
      emit(const OutilsWatcherState.loadInProgress());
      await _outilsStreamSubscription?.cancel();
      _outilsStreamSubscription =
          _iOutilsrepository.watchAllOutils().asStream().listen(
                (failureOrOutils) =>
                    add(OutilsWatcherEvent.outilsReceived(failureOrOutils)),
              );
    });

    on<_OutilsReceived>((event, emit) async {
      emit(event.failuresOrOutils.fold(
        (f) => OutilsWatcherState.loadFailure(f),
        (outils) => OutilsWatcherState.loadSuccess(outils),
      ));
    });
  }

  @override
  Future<void> close() async {
    await _outilsStreamSubscription?.cancel();
    return super.close();
  }
}
