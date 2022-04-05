import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_failure.freezed.dart';

@freezed
class PhotoFailure with _$PhotoFailure {
  // const factory PhotosFailure.wrongValue() = _WrongValue;
  const factory PhotoFailure.cancelledByUser() = _CancelledByUser;
  const factory PhotoFailure.internalError() = _InternalError;
}
