part of 'add_outils_form_bloc.dart';

@freezed
class AddOutilsFormState with _$AddOutilsFormState {
  const factory AddOutilsFormState({
    required Designation designation,
    required Complement complement,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<OutilsFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AddOutilsFormState;

  factory AddOutilsFormState.initial() => AddOutilsFormState(
        designation: Designation(''),
        complement: Complement(''),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
