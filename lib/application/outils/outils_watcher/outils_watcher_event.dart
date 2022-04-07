part of 'outils_watcher_bloc.dart';

@freezed
class OutilsWatcherEvent with _$OutilsWatcherEvent {
  const factory OutilsWatcherEvent.watchOutilsStarted() = _WatchOutilsStarted;

  const factory OutilsWatcherEvent.outilsReceived(
          Either<OutilsFailure, KtList<Outils>> failuresOrOutils) =
      _OutilsReceived;
}
