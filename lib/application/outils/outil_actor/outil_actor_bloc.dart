import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:gestion_outillage/domain/outils/i_outils_repository.dart';
import 'package:gestion_outillage/domain/outils/outils.dart';
import 'package:injectable/injectable.dart';

part 'outil_actor_bloc.freezed.dart';
part 'outil_actor_event.dart';
part 'outil_actor_state.dart';

@injectable
class OutilActorBloc extends Bloc<OutilActorEvent, OutilActorState> {
  final IOutilsRepository _outilsRepository;
  OutilActorBloc(this._outilsRepository)
      : super(const OutilActorState.initial()) {
    on<_Deleted>((event, emit) async {
      emit(const OutilActorState.actionInProgress());

      final possibleFailure = await _outilsRepository.delete(event.outils);
      emit(possibleFailure.fold(
        (f) => const OutilActorState.deletedFailure(),
        (_) => const OutilActorState.deletedSuccess(),
      ));
    });

    on<_Update>((event, emit) async {
      emit(const OutilActorState.actionInProgress());
      final possibleFailure = await _outilsRepository.update(event.outils);
      emit(possibleFailure.fold(
        (f) => const OutilActorState.updatedFailure(),
        (_) => const OutilActorState.updatedSuccess(),
      ));
    });

    on<_Create>((event, emit) async {
      emit(const OutilActorState.actionInProgress());
      final possibleFailure = await _outilsRepository.create(event.outils);
      emit(possibleFailure.fold(
        (f) => const OutilActorState.createFailure(),
        (_) => const OutilActorState.createSuccess(),
      ));
    });
  }
}
