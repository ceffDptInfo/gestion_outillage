part of 'outils_firebase_watcher_bloc.dart';

@freezed
class OutilsFirebaseWatcherState with _$OutilsFirebaseWatcherState {
  const factory OutilsFirebaseWatcherState.initial() = _Initial;
  const factory OutilsFirebaseWatcherState.loadInProgress() = _LoadInProgress;
  const factory OutilsFirebaseWatcherState.loadSuccess(
     KtList<Outils> listOutils) = _LoadSuccess;
  const factory OutilsFirebaseWatcherState.loadFailure(OutilsFailure outilsFailure) =
      _LoadFailure;
}
