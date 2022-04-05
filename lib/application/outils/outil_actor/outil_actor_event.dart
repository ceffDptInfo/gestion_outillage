part of 'outil_actor_bloc.dart';

@freezed
class OutilActorEvent with _$OutilActorEvent {
  const factory OutilActorEvent.deleted(Outils outils) = _Deleted;
  const factory OutilActorEvent.update(Outils outils) = _Update;
  const factory OutilActorEvent.create(Outils outils) = _Create;
}
