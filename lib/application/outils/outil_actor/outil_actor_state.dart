part of 'outil_actor_bloc.dart';

@freezed
class OutilActorState with _$OutilActorState {
  const factory OutilActorState.initial() = _Initial;
  const factory OutilActorState.actionInProgress() = _ActionInProgress;
  const factory OutilActorState.deletedFailure() = _DeletedFailure;
  const factory OutilActorState.deletedSuccess() = _DeletedSuccess;
  const factory OutilActorState.updatedFailure() = _UpdatedFailure;
  const factory OutilActorState.updatedSuccess() = _UpdatedSuccess;

  const factory OutilActorState.createSuccess() = _CreateSuccess;
  const factory OutilActorState.createFailure() = _CreateFailure;
}
