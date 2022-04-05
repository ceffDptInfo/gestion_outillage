// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:qr_code_scanner/qr_code_scanner.dart';

// part 'camera_bloc.freezed.dart';
// part 'camera_event.dart';
// part 'camera_state.dart';

// @injectable
// class CameraBloc extends Bloc<CameraEvent, CameraState> {
//   CameraBloc() : super(const CameraState.initial());

//   @override
//   Stream<CameraState> mapEventToState(
//     CameraEvent event,
//   ) async* {
//     yield* event.map(mapCameraInitializedToState: (e) async* {
//       try {
//         yield const CameraState.ready();
//       } on CameraException catch (error) {
//         yield CameraState.failure(error.description.toString());
//       }
//     }, mapCameraCapturedToState: (e) async* {
//       yield const CameraState.cameraCaptureInProgress();
//       try {
//         yield const CameraState.cameraCaptureSuccess();
//       } on CameraException catch (error) {
//         yield CameraState.failure(error.description.toString());
//       }
//     }, mapCameraStoppedToState: (e) async* {
//       yield const CameraState.initial();
//     });
//   }
// }
