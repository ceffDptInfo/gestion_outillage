part of 'user_outils_watcher_bloc.dart';

@freezed
class UserOutilsWatcherState with _$UserOutilsWatcherState {
  const factory UserOutilsWatcherState.initial() = _Initial;
  const factory UserOutilsWatcherState.loadInProgress() = _LoadInProgress;
  const factory UserOutilsWatcherState.loadSuccess(KtList<Outils> listOutils) =
      _LoadSuccess;
  const factory UserOutilsWatcherState.loadFailure(
      OutilsFailure outilsFailure) = _LoadFailure;
}
