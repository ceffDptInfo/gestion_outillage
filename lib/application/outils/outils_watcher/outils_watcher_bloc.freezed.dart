// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'outils_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OutilsWatcherEventTearOff {
  const _$OutilsWatcherEventTearOff();

  _WatchOutilsStarted watchOutilsStarted() {
    return const _WatchOutilsStarted();
  }

  _OutilsReceived outilsReceived(
      Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils) {
    return _OutilsReceived(
      failuresOrOutils,
    );
  }
}

/// @nodoc
const $OutilsWatcherEvent = _$OutilsWatcherEventTearOff();

/// @nodoc
mixin _$OutilsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchOutilsStarted,
    required TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)
        outilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchOutilsStarted,
    TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)?
        outilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOutilsStarted,
    TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)?
        outilsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOutilsStarted value) watchOutilsStarted,
    required TResult Function(_OutilsReceived value) outilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchOutilsStarted value)? watchOutilsStarted,
    TResult Function(_OutilsReceived value)? outilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOutilsStarted value)? watchOutilsStarted,
    TResult Function(_OutilsReceived value)? outilsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutilsWatcherEventCopyWith<$Res> {
  factory $OutilsWatcherEventCopyWith(
          OutilsWatcherEvent value, $Res Function(OutilsWatcherEvent) then) =
      _$OutilsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OutilsWatcherEventCopyWithImpl<$Res>
    implements $OutilsWatcherEventCopyWith<$Res> {
  _$OutilsWatcherEventCopyWithImpl(this._value, this._then);

  final OutilsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(OutilsWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchOutilsStartedCopyWith<$Res> {
  factory _$WatchOutilsStartedCopyWith(
          _WatchOutilsStarted value, $Res Function(_WatchOutilsStarted) then) =
      __$WatchOutilsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchOutilsStartedCopyWithImpl<$Res>
    extends _$OutilsWatcherEventCopyWithImpl<$Res>
    implements _$WatchOutilsStartedCopyWith<$Res> {
  __$WatchOutilsStartedCopyWithImpl(
      _WatchOutilsStarted _value, $Res Function(_WatchOutilsStarted) _then)
      : super(_value, (v) => _then(v as _WatchOutilsStarted));

  @override
  _WatchOutilsStarted get _value => super._value as _WatchOutilsStarted;
}

/// @nodoc

class _$_WatchOutilsStarted implements _WatchOutilsStarted {
  const _$_WatchOutilsStarted();

  @override
  String toString() {
    return 'OutilsWatcherEvent.watchOutilsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchOutilsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchOutilsStarted,
    required TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)
        outilsReceived,
  }) {
    return watchOutilsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchOutilsStarted,
    TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)?
        outilsReceived,
  }) {
    return watchOutilsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOutilsStarted,
    TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)?
        outilsReceived,
    required TResult orElse(),
  }) {
    if (watchOutilsStarted != null) {
      return watchOutilsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOutilsStarted value) watchOutilsStarted,
    required TResult Function(_OutilsReceived value) outilsReceived,
  }) {
    return watchOutilsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchOutilsStarted value)? watchOutilsStarted,
    TResult Function(_OutilsReceived value)? outilsReceived,
  }) {
    return watchOutilsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOutilsStarted value)? watchOutilsStarted,
    TResult Function(_OutilsReceived value)? outilsReceived,
    required TResult orElse(),
  }) {
    if (watchOutilsStarted != null) {
      return watchOutilsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchOutilsStarted implements OutilsWatcherEvent {
  const factory _WatchOutilsStarted() = _$_WatchOutilsStarted;
}

/// @nodoc
abstract class _$OutilsReceivedCopyWith<$Res> {
  factory _$OutilsReceivedCopyWith(
          _OutilsReceived value, $Res Function(_OutilsReceived) then) =
      __$OutilsReceivedCopyWithImpl<$Res>;
  $Res call({Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils});
}

/// @nodoc
class __$OutilsReceivedCopyWithImpl<$Res>
    extends _$OutilsWatcherEventCopyWithImpl<$Res>
    implements _$OutilsReceivedCopyWith<$Res> {
  __$OutilsReceivedCopyWithImpl(
      _OutilsReceived _value, $Res Function(_OutilsReceived) _then)
      : super(_value, (v) => _then(v as _OutilsReceived));

  @override
  _OutilsReceived get _value => super._value as _OutilsReceived;

  @override
  $Res call({
    Object? failuresOrOutils = freezed,
  }) {
    return _then(_OutilsReceived(
      failuresOrOutils == freezed
          ? _value.failuresOrOutils
          : failuresOrOutils // ignore: cast_nullable_to_non_nullable
              as Either<OutilsFailure, Stream<List<OutilsDto>>>,
    ));
  }
}

/// @nodoc

class _$_OutilsReceived implements _OutilsReceived {
  const _$_OutilsReceived(this.failuresOrOutils);

  @override
  final Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils;

  @override
  String toString() {
    return 'OutilsWatcherEvent.outilsReceived(failuresOrOutils: $failuresOrOutils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutilsReceived &&
            (identical(other.failuresOrOutils, failuresOrOutils) ||
                const DeepCollectionEquality()
                    .equals(other.failuresOrOutils, failuresOrOutils)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failuresOrOutils);

  @JsonKey(ignore: true)
  @override
  _$OutilsReceivedCopyWith<_OutilsReceived> get copyWith =>
      __$OutilsReceivedCopyWithImpl<_OutilsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchOutilsStarted,
    required TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)
        outilsReceived,
  }) {
    return outilsReceived(failuresOrOutils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchOutilsStarted,
    TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)?
        outilsReceived,
  }) {
    return outilsReceived?.call(failuresOrOutils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchOutilsStarted,
    TResult Function(
            Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils)?
        outilsReceived,
    required TResult orElse(),
  }) {
    if (outilsReceived != null) {
      return outilsReceived(failuresOrOutils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchOutilsStarted value) watchOutilsStarted,
    required TResult Function(_OutilsReceived value) outilsReceived,
  }) {
    return outilsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchOutilsStarted value)? watchOutilsStarted,
    TResult Function(_OutilsReceived value)? outilsReceived,
  }) {
    return outilsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchOutilsStarted value)? watchOutilsStarted,
    TResult Function(_OutilsReceived value)? outilsReceived,
    required TResult orElse(),
  }) {
    if (outilsReceived != null) {
      return outilsReceived(this);
    }
    return orElse();
  }
}

abstract class _OutilsReceived implements OutilsWatcherEvent {
  const factory _OutilsReceived(
          Either<OutilsFailure, Stream<List<OutilsDto>>> failuresOrOutils) =
      _$_OutilsReceived;

  Either<OutilsFailure, Stream<List<OutilsDto>>> get failuresOrOutils =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OutilsReceivedCopyWith<_OutilsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OutilsWatcherStateTearOff {
  const _$OutilsWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(Stream<List<OutilsDto>> listOutils) {
    return _LoadSuccess(
      listOutils,
    );
  }

  _LoadFailure loadFailure(OutilsFailure outilsFailure) {
    return _LoadFailure(
      outilsFailure,
    );
  }
}

/// @nodoc
const $OutilsWatcherState = _$OutilsWatcherStateTearOff();

/// @nodoc
mixin _$OutilsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Stream<List<OutilsDto>> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutilsWatcherStateCopyWith<$Res> {
  factory $OutilsWatcherStateCopyWith(
          OutilsWatcherState value, $Res Function(OutilsWatcherState) then) =
      _$OutilsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OutilsWatcherStateCopyWithImpl<$Res>
    implements $OutilsWatcherStateCopyWith<$Res> {
  _$OutilsWatcherStateCopyWithImpl(this._value, this._then);

  final OutilsWatcherState _value;
  // ignore: unused_field
  final $Res Function(OutilsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$OutilsWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OutilsWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Stream<List<OutilsDto>> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OutilsWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$OutilsWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'OutilsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Stream<List<OutilsDto>> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements OutilsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Stream<List<OutilsDto>> listOutils});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$OutilsWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? listOutils = freezed,
  }) {
    return _then(_LoadSuccess(
      listOutils == freezed
          ? _value.listOutils
          : listOutils // ignore: cast_nullable_to_non_nullable
              as Stream<List<OutilsDto>>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.listOutils);

  @override
  final Stream<List<OutilsDto>> listOutils;

  @override
  String toString() {
    return 'OutilsWatcherState.loadSuccess(listOutils: $listOutils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.listOutils, listOutils) ||
                const DeepCollectionEquality()
                    .equals(other.listOutils, listOutils)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listOutils);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Stream<List<OutilsDto>> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return loadSuccess(listOutils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(listOutils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(listOutils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements OutilsWatcherState {
  const factory _LoadSuccess(Stream<List<OutilsDto>> listOutils) =
      _$_LoadSuccess;

  Stream<List<OutilsDto>> get listOutils => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({OutilsFailure outilsFailure});

  $OutilsFailureCopyWith<$Res> get outilsFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$OutilsWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? outilsFailure = freezed,
  }) {
    return _then(_LoadFailure(
      outilsFailure == freezed
          ? _value.outilsFailure
          : outilsFailure // ignore: cast_nullable_to_non_nullable
              as OutilsFailure,
    ));
  }

  @override
  $OutilsFailureCopyWith<$Res> get outilsFailure {
    return $OutilsFailureCopyWith<$Res>(_value.outilsFailure, (value) {
      return _then(_value.copyWith(outilsFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.outilsFailure);

  @override
  final OutilsFailure outilsFailure;

  @override
  String toString() {
    return 'OutilsWatcherState.loadFailure(outilsFailure: $outilsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.outilsFailure, outilsFailure) ||
                const DeepCollectionEquality()
                    .equals(other.outilsFailure, outilsFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outilsFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Stream<List<OutilsDto>> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return loadFailure(outilsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return loadFailure?.call(outilsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Stream<List<OutilsDto>> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(outilsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements OutilsWatcherState {
  const factory _LoadFailure(OutilsFailure outilsFailure) = _$_LoadFailure;

  OutilsFailure get outilsFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
