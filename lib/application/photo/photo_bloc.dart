import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'photo_event.dart';
part 'photo_state.dart';
part 'photo_bloc.freezed.dart';

@injectable
class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  // final PhotoProvider photoProvider;

  PhotoBloc() : super(const _Initial());

  @override
  Stream<PhotoState> mapEventToState(
    PhotoEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {},
      loaded: (e) async* {
        try {
          // final photos = await photoProvider.loadPhotos();
          yield const PhotoState.photoLoadSuccess();
        } on Exception catch (error) {
          yield PhotoState.photoLoadFailure(error.toString());
        }
      },
      added: (e) async* {
        // final photos = List<Photo>.from((state as PhotosLoadSuccess).photos)..add(event.photo);
        yield const PhotoState.photoLoadInProgress();
        try {
          yield const PhotoState.photoLoadSuccess();
        } on Exception catch (error) {
          yield PhotoState.photoLoadFailure(error.toString());
        }
      },
      deleted: (e) async* {
        // final photos = List<Photo>.from((state as PhotosLoadSuccess).photos)..remove(event.photo);
        yield const PhotoState.photoLoadInProgress();
        try {
          yield const PhotoState.photoLoadSuccess();
        } on Exception catch (error) {
          yield PhotoState.photoLoadFailure(error.toString());
        }
      },
    );
  }
}
