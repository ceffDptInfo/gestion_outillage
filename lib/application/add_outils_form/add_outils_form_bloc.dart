import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gestion_outillage/domain/outils/outils_failure.dart';
import 'package:gestion_outillage/domain/outils/value_objects.dart';

import 'package:injectable/injectable.dart';
import 'dart:async';
part 'add_outils_form_event.dart';
part 'add_outils_form_state.dart';
part 'add_outils_form_bloc.freezed.dart';

@injectable
class AddOutilsFormBloc extends Bloc<AddOutilsFormEvent, AddOutilsFormState> {
  AddOutilsFormBloc() : super(AddOutilsFormState.initial());

  @override
  Stream<AddOutilsFormState> mapEventToState(
    AddOutilsFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state.copyWith(
            // outils: e.outils,
            );
      },
      designationChanged: (e) async* {
        yield state.copyWith(
          designation: Designation(e.designation),
        );
      },
      complementChanged: (e) async* {
        yield state.copyWith(
          complement: Complement(e.complement),
        );
      },
    );
  }
}
