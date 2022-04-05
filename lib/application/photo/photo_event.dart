part of 'photo_bloc.dart';

@freezed
class PhotoEvent with _$PhotoEvent {
  const factory PhotoEvent.started() = _Started;
  const factory PhotoEvent.loaded() = _Lodaed;
  const factory PhotoEvent.added() = _Added;
  const factory PhotoEvent.deleted() = _Deleted;
}
