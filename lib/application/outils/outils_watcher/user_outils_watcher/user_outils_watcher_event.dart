part of 'user_outils_watcher_bloc.dart';

@freezed
class UserOutilsWatcherEvent with _$UserOutilsWatcherEvent {
  const factory UserOutilsWatcherEvent.watchUserOutilsStarted() =
      _WatchUserOutilsStarted;

  const factory UserOutilsWatcherEvent.userOutilsReceived(
          Either<OutilsFailure, KtList<Outils>> failureOrUserOutils) =
      _UserOutilsReceived;
}
