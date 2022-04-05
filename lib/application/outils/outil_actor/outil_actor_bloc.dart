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
      : super(const OutilActorState.initial());

  @override
  Stream<OutilActorState> mapEventToState(OutilActorEvent event) async* {
    yield* event.map(
      // selected: (e) async* {
      // yield const OutilActorState.actionInProgress();
      // final possibleFailure = await _outilsRepository.update(e.outils);
      // yield possibleFailure.fold((f) => OutilActorState.updatedFailure(f),
      //     (_) => const OutilActorState.updatedSuccess());
      // },
      deleted: (e) async* {
        yield const OutilActorState.actionInProgress();

        final possibleFailure = await _outilsRepository.delete(e.outils);
        yield possibleFailure.fold(
          (f) => const OutilActorState.deletedFailure(),
          (_) => const OutilActorState.deletedSuccess(),
        );
      },
      update: (e) async* {
        yield const OutilActorState.actionInProgress();
        final possibleFailure = await _outilsRepository.update(e.outils);
        yield possibleFailure.fold(
          (f) => const OutilActorState.updatedFailure(),
          (_) => const OutilActorState.updatedSuccess(),
        );
      },
      create: (e) async* {
        yield const OutilActorState.actionInProgress();
        final possibleFailure = await _outilsRepository.create(e.outils);
        yield possibleFailure.fold(
          (f) => const OutilActorState.createFailure(),
          (_) => const OutilActorState.createSuccess(),
        );
      },
    );
  }
}
