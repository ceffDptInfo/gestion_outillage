// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'outil_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OutilActorEventTearOff {
  const _$OutilActorEventTearOff();

  _Deleted deleted(Outils outils) {
    return _Deleted(
      outils,
    );
  }

  _Update update(Outils outils) {
    return _Update(
      outils,
    );
  }

  _Create create(Outils outils) {
    return _Create(
      outils,
    );
  }
}

/// @nodoc
const $OutilActorEvent = _$OutilActorEventTearOff();

/// @nodoc
mixin _$OutilActorEvent {
  Outils get outils => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Outils outils) deleted,
    required TResult Function(Outils outils) update,
    required TResult Function(Outils outils) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Update value) update,
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutilActorEventCopyWith<OutilActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutilActorEventCopyWith<$Res> {
  factory $OutilActorEventCopyWith(
          OutilActorEvent value, $Res Function(OutilActorEvent) then) =
      _$OutilActorEventCopyWithImpl<$Res>;
  $Res call({Outils outils});

  $OutilsCopyWith<$Res> get outils;
}

/// @nodoc
class _$OutilActorEventCopyWithImpl<$Res>
    implements $OutilActorEventCopyWith<$Res> {
  _$OutilActorEventCopyWithImpl(this._value, this._then);

  final OutilActorEvent _value;
  // ignore: unused_field
  final $Res Function(OutilActorEvent) _then;

  @override
  $Res call({
    Object? outils = freezed,
  }) {
    return _then(_value.copyWith(
      outils: outils == freezed
          ? _value.outils
          : outils // ignore: cast_nullable_to_non_nullable
              as Outils,
    ));
  }

  @override
  $OutilsCopyWith<$Res> get outils {
    return $OutilsCopyWith<$Res>(_value.outils, (value) {
      return _then(_value.copyWith(outils: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $OutilActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Outils outils});

  @override
  $OutilsCopyWith<$Res> get outils;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res> extends _$OutilActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? outils = freezed,
  }) {
    return _then(_Deleted(
      outils == freezed
          ? _value.outils
          : outils // ignore: cast_nullable_to_non_nullable
              as Outils,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.outils);

  @override
  final Outils outils;

  @override
  String toString() {
    return 'OutilActorEvent.deleted(outils: $outils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Deleted &&
            const DeepCollectionEquality().equals(other.outils, outils));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(outils));

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Outils outils) deleted,
    required TResult Function(Outils outils) update,
    required TResult Function(Outils outils) create,
  }) {
    return deleted(outils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
  }) {
    return deleted?.call(outils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(outils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Update value) update,
    required TResult Function(_Create value) create,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements OutilActorEvent {
  const factory _Deleted(Outils outils) = _$_Deleted;

  @override
  Outils get outils;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res>
    implements $OutilActorEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({Outils outils});

  @override
  $OutilsCopyWith<$Res> get outils;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$OutilActorEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? outils = freezed,
  }) {
    return _then(_Update(
      outils == freezed
          ? _value.outils
          : outils // ignore: cast_nullable_to_non_nullable
              as Outils,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.outils);

  @override
  final Outils outils;

  @override
  String toString() {
    return 'OutilActorEvent.update(outils: $outils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Update &&
            const DeepCollectionEquality().equals(other.outils, outils));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(outils));

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Outils outils) deleted,
    required TResult Function(Outils outils) update,
    required TResult Function(Outils outils) create,
  }) {
    return update(outils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
  }) {
    return update?.call(outils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(outils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Update value) update,
    required TResult Function(_Create value) create,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements OutilActorEvent {
  const factory _Update(Outils outils) = _$_Update;

  @override
  Outils get outils;
  @override
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCopyWith<$Res>
    implements $OutilActorEventCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
  @override
  $Res call({Outils outils});

  @override
  $OutilsCopyWith<$Res> get outils;
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> extends _$OutilActorEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;

  @override
  $Res call({
    Object? outils = freezed,
  }) {
    return _then(_Create(
      outils == freezed
          ? _value.outils
          : outils // ignore: cast_nullable_to_non_nullable
              as Outils,
    ));
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create(this.outils);

  @override
  final Outils outils;

  @override
  String toString() {
    return 'OutilActorEvent.create(outils: $outils)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Create &&
            const DeepCollectionEquality().equals(other.outils, outils));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(outils));

  @JsonKey(ignore: true)
  @override
  _$CreateCopyWith<_Create> get copyWith =>
      __$CreateCopyWithImpl<_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Outils outils) deleted,
    required TResult Function(Outils outils) update,
    required TResult Function(Outils outils) create,
  }) {
    return create(outils);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
  }) {
    return create?.call(outils);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Outils outils)? deleted,
    TResult Function(Outils outils)? update,
    TResult Function(Outils outils)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(outils);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_Update value) update,
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    TResult Function(_Update value)? update,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements OutilActorEvent {
  const factory _Create(Outils outils) = _$_Create;

  @override
  Outils get outils;
  @override
  @JsonKey(ignore: true)
  _$CreateCopyWith<_Create> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$OutilActorStateTearOff {
  const _$OutilActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeletedFailure deletedFailure() {
    return const _DeletedFailure();
  }

  _DeletedSuccess deletedSuccess() {
    return const _DeletedSuccess();
  }

  _UpdatedFailure updatedFailure() {
    return const _UpdatedFailure();
  }

  _UpdatedSuccess updatedSuccess() {
    return const _UpdatedSuccess();
  }

  _CreateSuccess createSuccess() {
    return const _CreateSuccess();
  }

  _CreateFailure createFailure() {
    return const _CreateFailure();
  }
}

/// @nodoc
const $OutilActorState = _$OutilActorStateTearOff();

/// @nodoc
mixin _$OutilActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutilActorStateCopyWith<$Res> {
  factory $OutilActorStateCopyWith(
          OutilActorState value, $Res Function(OutilActorState) then) =
      _$OutilActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OutilActorStateCopyWithImpl<$Res>
    implements $OutilActorStateCopyWith<$Res> {
  _$OutilActorStateCopyWithImpl(this._value, this._then);

  final OutilActorState _value;
  // ignore: unused_field
  final $Res Function(OutilActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OutilActorStateCopyWithImpl<$Res>
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
    return 'OutilActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OutilActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'OutilActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements OutilActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeletedFailureCopyWith<$Res> {
  factory _$DeletedFailureCopyWith(
          _DeletedFailure value, $Res Function(_DeletedFailure) then) =
      __$DeletedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedFailureCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$DeletedFailureCopyWith<$Res> {
  __$DeletedFailureCopyWithImpl(
      _DeletedFailure _value, $Res Function(_DeletedFailure) _then)
      : super(_value, (v) => _then(v as _DeletedFailure));

  @override
  _DeletedFailure get _value => super._value as _DeletedFailure;
}

/// @nodoc

class _$_DeletedFailure implements _DeletedFailure {
  const _$_DeletedFailure();

  @override
  String toString() {
    return 'OutilActorState.deletedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeletedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return deletedFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return deletedFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (deletedFailure != null) {
      return deletedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return deletedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return deletedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (deletedFailure != null) {
      return deletedFailure(this);
    }
    return orElse();
  }
}

abstract class _DeletedFailure implements OutilActorState {
  const factory _DeletedFailure() = _$_DeletedFailure;
}

/// @nodoc
abstract class _$DeletedSuccessCopyWith<$Res> {
  factory _$DeletedSuccessCopyWith(
          _DeletedSuccess value, $Res Function(_DeletedSuccess) then) =
      __$DeletedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedSuccessCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$DeletedSuccessCopyWith<$Res> {
  __$DeletedSuccessCopyWithImpl(
      _DeletedSuccess _value, $Res Function(_DeletedSuccess) _then)
      : super(_value, (v) => _then(v as _DeletedSuccess));

  @override
  _DeletedSuccess get _value => super._value as _DeletedSuccess;
}

/// @nodoc

class _$_DeletedSuccess implements _DeletedSuccess {
  const _$_DeletedSuccess();

  @override
  String toString() {
    return 'OutilActorState.deletedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeletedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return deletedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return deletedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (deletedSuccess != null) {
      return deletedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return deletedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return deletedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (deletedSuccess != null) {
      return deletedSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeletedSuccess implements OutilActorState {
  const factory _DeletedSuccess() = _$_DeletedSuccess;
}

/// @nodoc
abstract class _$UpdatedFailureCopyWith<$Res> {
  factory _$UpdatedFailureCopyWith(
          _UpdatedFailure value, $Res Function(_UpdatedFailure) then) =
      __$UpdatedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedFailureCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$UpdatedFailureCopyWith<$Res> {
  __$UpdatedFailureCopyWithImpl(
      _UpdatedFailure _value, $Res Function(_UpdatedFailure) _then)
      : super(_value, (v) => _then(v as _UpdatedFailure));

  @override
  _UpdatedFailure get _value => super._value as _UpdatedFailure;
}

/// @nodoc

class _$_UpdatedFailure implements _UpdatedFailure {
  const _$_UpdatedFailure();

  @override
  String toString() {
    return 'OutilActorState.updatedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdatedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return updatedFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return updatedFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (updatedFailure != null) {
      return updatedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return updatedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return updatedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (updatedFailure != null) {
      return updatedFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdatedFailure implements OutilActorState {
  const factory _UpdatedFailure() = _$_UpdatedFailure;
}

/// @nodoc
abstract class _$UpdatedSuccessCopyWith<$Res> {
  factory _$UpdatedSuccessCopyWith(
          _UpdatedSuccess value, $Res Function(_UpdatedSuccess) then) =
      __$UpdatedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedSuccessCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$UpdatedSuccessCopyWith<$Res> {
  __$UpdatedSuccessCopyWithImpl(
      _UpdatedSuccess _value, $Res Function(_UpdatedSuccess) _then)
      : super(_value, (v) => _then(v as _UpdatedSuccess));

  @override
  _UpdatedSuccess get _value => super._value as _UpdatedSuccess;
}

/// @nodoc

class _$_UpdatedSuccess implements _UpdatedSuccess {
  const _$_UpdatedSuccess();

  @override
  String toString() {
    return 'OutilActorState.updatedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UpdatedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return updatedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return updatedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (updatedSuccess != null) {
      return updatedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return updatedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return updatedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (updatedSuccess != null) {
      return updatedSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdatedSuccess implements OutilActorState {
  const factory _UpdatedSuccess() = _$_UpdatedSuccess;
}

/// @nodoc
abstract class _$CreateSuccessCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(
          _CreateSuccess value, $Res Function(_CreateSuccess) then) =
      __$CreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(
      _CreateSuccess _value, $Res Function(_CreateSuccess) _then)
      : super(_value, (v) => _then(v as _CreateSuccess));

  @override
  _CreateSuccess get _value => super._value as _CreateSuccess;
}

/// @nodoc

class _$_CreateSuccess implements _CreateSuccess {
  const _$_CreateSuccess();

  @override
  String toString() {
    return 'OutilActorState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return createSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return createSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements OutilActorState {
  const factory _CreateSuccess() = _$_CreateSuccess;
}

/// @nodoc
abstract class _$CreateFailureCopyWith<$Res> {
  factory _$CreateFailureCopyWith(
          _CreateFailure value, $Res Function(_CreateFailure) then) =
      __$CreateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateFailureCopyWithImpl<$Res>
    extends _$OutilActorStateCopyWithImpl<$Res>
    implements _$CreateFailureCopyWith<$Res> {
  __$CreateFailureCopyWithImpl(
      _CreateFailure _value, $Res Function(_CreateFailure) _then)
      : super(_value, (v) => _then(v as _CreateFailure));

  @override
  _CreateFailure get _value => super._value as _CreateFailure;
}

/// @nodoc

class _$_CreateFailure implements _CreateFailure {
  const _$_CreateFailure();

  @override
  String toString() {
    return 'OutilActorState.createFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() deletedFailure,
    required TResult Function() deletedSuccess,
    required TResult Function() updatedFailure,
    required TResult Function() updatedSuccess,
    required TResult Function() createSuccess,
    required TResult Function() createFailure,
  }) {
    return createFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
  }) {
    return createFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? deletedFailure,
    TResult Function()? deletedSuccess,
    TResult Function()? updatedFailure,
    TResult Function()? updatedSuccess,
    TResult Function()? createSuccess,
    TResult Function()? createFailure,
    required TResult orElse(),
  }) {
    if (createFailure != null) {
      return createFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_DeletedFailure value) deletedFailure,
    required TResult Function(_DeletedSuccess value) deletedSuccess,
    required TResult Function(_UpdatedFailure value) updatedFailure,
    required TResult Function(_UpdatedSuccess value) updatedSuccess,
    required TResult Function(_CreateSuccess value) createSuccess,
    required TResult Function(_CreateFailure value) createFailure,
  }) {
    return createFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
  }) {
    return createFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_DeletedFailure value)? deletedFailure,
    TResult Function(_DeletedSuccess value)? deletedSuccess,
    TResult Function(_UpdatedFailure value)? updatedFailure,
    TResult Function(_UpdatedSuccess value)? updatedSuccess,
    TResult Function(_CreateSuccess value)? createSuccess,
    TResult Function(_CreateFailure value)? createFailure,
    required TResult orElse(),
  }) {
    if (createFailure != null) {
      return createFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateFailure implements OutilActorState {
  const factory _CreateFailure() = _$_CreateFailure;
}
