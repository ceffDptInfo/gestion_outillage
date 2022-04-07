part of 'outils_watcher_bloc.dart';

@freezed
class OutilsWatcherState with _$OutilsWatcherState {
  const factory OutilsWatcherState.initial() = _Initial;
  const factory OutilsWatcherState.loadInProgress() = _LoadInProgress;
  const factory OutilsWatcherState.loadSuccess(
     KtList<Outils> listOutils) = _LoadSuccess;
  const factory OutilsWatcherState.loadFailure(OutilsFailure outilsFailure) =
      _LoadFailure;
}
