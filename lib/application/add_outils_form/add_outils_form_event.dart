part of 'add_outils_form_bloc.dart';

@freezed
class AddOutilsFormEvent with _$AddOutilsFormEvent {
  const factory AddOutilsFormEvent.initialized() = _Initialized;
  const factory AddOutilsFormEvent.designationChanged(String designation) =
      _DesignationChanged;
  const factory AddOutilsFormEvent.complementChanged(String complement) =
      _ComplementChanged;
}
