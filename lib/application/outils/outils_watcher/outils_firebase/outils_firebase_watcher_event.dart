part of 'outils_firebase_watcher_bloc.dart';

@freezed
class OutilsFirebaseWatcherEvent with _$OutilsFirebaseWatcherEvent {
  const factory OutilsFirebaseWatcherEvent.watchOutilsStarted() = _WatchOutilsStarted;

  const factory OutilsFirebaseWatcherEvent.outilsReceived(
          Either<OutilsFailure, KtList<Outils>> failuresOrOutils) =
      _OutilsReceived;
}
