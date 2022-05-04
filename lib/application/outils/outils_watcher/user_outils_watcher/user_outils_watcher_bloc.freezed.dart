// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_outils_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserOutilsWatcherEventTearOff {
  const _$UserOutilsWatcherEventTearOff();

  _WatchUserOutilsStarted watchUserOutilsStarted() {
    return const _WatchUserOutilsStarted();
  }

  _UserOutilsReceived userOutilsReceived(
      Either<OutilsFailure, KtList<Outils>> failureOrUserOutils) {
    return _UserOutilsReceived(
      failureOrUserOutils,
    );
  }
}

/// @nodoc
const $UserOutilsWatcherEvent = _$UserOutilsWatcherEventTearOff();

/// @nodoc
mixin _$UserOutilsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchUserOutilsStarted,
    required TResult Function(
            Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)
        userOutilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchUserOutilsStarted,
    TResult Function(Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)?
        userOutilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchUserOutilsStarted,
    TResult Function(Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)?
        userOutilsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUserOutilsStarted value)
        watchUserOutilsStarted,
    required TResult Function(_UserOutilsReceived value) userOutilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUserOutilsStarted value)? watchUserOutilsStarted,
    TResult Function(_UserOutilsReceived value)? userOutilsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUserOutilsStarted value)? watchUserOutilsStarted,
    TResult Function(_UserOutilsReceived value)? userOutilsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOutilsWatcherEventCopyWith<$Res> {
  factory $UserOutilsWatcherEventCopyWith(UserOutilsWatcherEvent value,
          $Res Function(UserOutilsWatcherEvent) then) =
      _$UserOutilsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserOutilsWatcherEventCopyWithImpl<$Res>
    implements $UserOutilsWatcherEventCopyWith<$Res> {
  _$UserOutilsWatcherEventCopyWithImpl(this._value, this._then);

  final UserOutilsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(UserOutilsWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchUserOutilsStartedCopyWith<$Res> {
  factory _$WatchUserOutilsStartedCopyWith(_WatchUserOutilsStarted value,
          $Res Function(_WatchUserOutilsStarted) then) =
      __$WatchUserOutilsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUserOutilsStartedCopyWithImpl<$Res>
    extends _$UserOutilsWatcherEventCopyWithImpl<$Res>
    implements _$WatchUserOutilsStartedCopyWith<$Res> {
  __$WatchUserOutilsStartedCopyWithImpl(_WatchUserOutilsStarted _value,
      $Res Function(_WatchUserOutilsStarted) _then)
      : super(_value, (v) => _then(v as _WatchUserOutilsStarted));

  @override
  _WatchUserOutilsStarted get _value => super._value as _WatchUserOutilsStarted;
}

/// @nodoc

class _$_WatchUserOutilsStarted implements _WatchUserOutilsStarted {
  const _$_WatchUserOutilsStarted();

  @override
  String toString() {
    return 'UserOutilsWatcherEvent.watchUserOutilsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchUserOutilsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchUserOutilsStarted,
    required TResult Function(
            Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)
        userOutilsReceived,
  }) {
    return watchUserOutilsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchUserOutilsStarted,
    TResult Function(Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)?
        userOutilsReceived,
  }) {
    return watchUserOutilsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchUserOutilsStarted,
    TResult Function(Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)?
        userOutilsReceived,
    required TResult orElse(),
  }) {
    if (watchUserOutilsStarted != null) {
      return watchUserOutilsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUserOutilsStarted value)
        watchUserOutilsStarted,
    required TResult Function(_UserOutilsReceived value) userOutilsReceived,
  }) {
    return watchUserOutilsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUserOutilsStarted value)? watchUserOutilsStarted,
    TResult Function(_UserOutilsReceived value)? userOutilsReceived,
  }) {
    return watchUserOutilsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUserOutilsStarted value)? watchUserOutilsStarted,
    TResult Function(_UserOutilsReceived value)? userOutilsReceived,
    required TResult orElse(),
  }) {
    if (watchUserOutilsStarted != null) {
      return watchUserOutilsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUserOutilsStarted implements UserOutilsWatcherEvent {
  const factory _WatchUserOutilsStarted() = _$_WatchUserOutilsStarted;
}

/// @nodoc
abstract class _$UserOutilsReceivedCopyWith<$Res> {
  factory _$UserOutilsReceivedCopyWith(
          _UserOutilsReceived value, $Res Function(_UserOutilsReceived) then) =
      __$UserOutilsReceivedCopyWithImpl<$Res>;
  $Res call({Either<OutilsFailure, KtList<Outils>> failureOrUserOutils});
}

/// @nodoc
class __$UserOutilsReceivedCopyWithImpl<$Res>
    extends _$UserOutilsWatcherEventCopyWithImpl<$Res>
    implements _$UserOutilsReceivedCopyWith<$Res> {
  __$UserOutilsReceivedCopyWithImpl(
      _UserOutilsReceived _value, $Res Function(_UserOutilsReceived) _then)
      : super(_value, (v) => _then(v as _UserOutilsReceived));

  @override
  _UserOutilsReceived get _value => super._value as _UserOutilsReceived;

  @override
  $Res call({
    Object? failureOrUserOutils = freezed,
  }) {
    return _then(_UserOutilsReceived(
      failureOrUserOutils == freezed
          ? _value.failureOrUserOutils
          : failureOrUserOutils // ignore: cast_nullable_to_non_nullable
              as Either<OutilsFailure, KtList<Outils>>,
    ));
  }
}

/// @nodoc

class _$_UserOutilsReceived implements _UserOutilsReceived {
  const _$_UserOutilsReceived(this.failureOrUserOutils);

  @override
  final Either<OutilsFailure, KtList<Outils>> failureOrUserOutils;

  @override
  String toString() {
    return 'UserOutilsWatcherEvent.userOutilsReceived(failureOrUserOutils: $failureOrUserOutils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserOutilsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrUserOutils, failureOrUserOutils));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrUserOutils));

  @JsonKey(ignore: true)
  @override
  _$UserOutilsReceivedCopyWith<_UserOutilsReceived> get copyWith =>
      __$UserOutilsReceivedCopyWithImpl<_UserOutilsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchUserOutilsStarted,
    required TResult Function(
            Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)
        userOutilsReceived,
  }) {
    return userOutilsReceived(failureOrUserOutils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchUserOutilsStarted,
    TResult Function(Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)?
        userOutilsReceived,
  }) {
    return userOutilsReceived?.call(failureOrUserOutils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchUserOutilsStarted,
    TResult Function(Either<OutilsFailure, KtList<Outils>> failureOrUserOutils)?
        userOutilsReceived,
    required TResult orElse(),
  }) {
    if (userOutilsReceived != null) {
      return userOutilsReceived(failureOrUserOutils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchUserOutilsStarted value)
        watchUserOutilsStarted,
    required TResult Function(_UserOutilsReceived value) userOutilsReceived,
  }) {
    return userOutilsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchUserOutilsStarted value)? watchUserOutilsStarted,
    TResult Function(_UserOutilsReceived value)? userOutilsReceived,
  }) {
    return userOutilsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchUserOutilsStarted value)? watchUserOutilsStarted,
    TResult Function(_UserOutilsReceived value)? userOutilsReceived,
    required TResult orElse(),
  }) {
    if (userOutilsReceived != null) {
      return userOutilsReceived(this);
    }
    return orElse();
  }
}

abstract class _UserOutilsReceived implements UserOutilsWatcherEvent {
  const factory _UserOutilsReceived(
          Either<OutilsFailure, KtList<Outils>> failureOrUserOutils) =
      _$_UserOutilsReceived;

  Either<OutilsFailure, KtList<Outils>> get failureOrUserOutils;
  @JsonKey(ignore: true)
  _$UserOutilsReceivedCopyWith<_UserOutilsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserOutilsWatcherStateTearOff {
  const _$UserOutilsWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Outils> listOutils) {
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
const $UserOutilsWatcherState = _$UserOutilsWatcherStateTearOff();

/// @nodoc
mixin _$UserOutilsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Outils> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
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
abstract class $UserOutilsWatcherStateCopyWith<$Res> {
  factory $UserOutilsWatcherStateCopyWith(UserOutilsWatcherState value,
          $Res Function(UserOutilsWatcherState) then) =
      _$UserOutilsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserOutilsWatcherStateCopyWithImpl<$Res>
    implements $UserOutilsWatcherStateCopyWith<$Res> {
  _$UserOutilsWatcherStateCopyWithImpl(this._value, this._then);

  final UserOutilsWatcherState _value;
  // ignore: unused_field
  final $Res Function(UserOutilsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserOutilsWatcherStateCopyWithImpl<$Res>
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
    return 'UserOutilsWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Outils> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
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

abstract class _Initial implements UserOutilsWatcherState {
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
    extends _$UserOutilsWatcherStateCopyWithImpl<$Res>
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
    return 'UserOutilsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Outils> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
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

abstract class _LoadInProgress implements UserOutilsWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Outils> listOutils});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserOutilsWatcherStateCopyWithImpl<$Res>
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
              as KtList<Outils>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.listOutils);

  @override
  final KtList<Outils> listOutils;

  @override
  String toString() {
    return 'UserOutilsWatcherState.loadSuccess(listOutils: $listOutils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.listOutils, listOutils));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(listOutils));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Outils> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return loadSuccess(listOutils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return loadSuccess?.call(listOutils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
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

abstract class _LoadSuccess implements UserOutilsWatcherState {
  const factory _LoadSuccess(KtList<Outils> listOutils) = _$_LoadSuccess;

  KtList<Outils> get listOutils;
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
    extends _$UserOutilsWatcherStateCopyWithImpl<$Res>
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
    return 'UserOutilsWatcherState.loadFailure(outilsFailure: $outilsFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.outilsFailure, outilsFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(outilsFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Outils> listOutils) loadSuccess,
    required TResult Function(OutilsFailure outilsFailure) loadFailure,
  }) {
    return loadFailure(outilsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
    TResult Function(OutilsFailure outilsFailure)? loadFailure,
  }) {
    return loadFailure?.call(outilsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Outils> listOutils)? loadSuccess,
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

abstract class _LoadFailure implements UserOutilsWatcherState {
  const factory _LoadFailure(OutilsFailure outilsFailure) = _$_LoadFailure;

  OutilsFailure get outilsFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
