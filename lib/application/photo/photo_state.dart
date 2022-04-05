part of 'photo_bloc.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.initial() = _Initial;
  const factory PhotoState.photoLoadInProgress() = _PhotoLoadInProgress;
  const factory PhotoState.photoLoadSuccess() = _PhotoLoadSuccess;
  const factory PhotoState.photoLoadFailure(String error) = _PhotoLoadFailure;
}
