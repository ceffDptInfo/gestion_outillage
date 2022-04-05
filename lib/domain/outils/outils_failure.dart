import 'package:freezed_annotation/freezed_annotation.dart';

part 'outils_failure.freezed.dart';

@freezed
class OutilsFailure with _$OutilsFailure {
  const factory OutilsFailure.unexpected() = _Unexpected;
  const factory OutilsFailure.insufficientPermission() =
      _InsufficientPermission;
}
