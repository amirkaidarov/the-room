// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomWatcherEventTearOff {
  const _$RoomWatcherEventTearOff();

  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

  _RoomSearched roomSearched(String query) {
    return _RoomSearched(
      query,
    );
  }

  _RoomsReceived roomsReceived(Either<RoomFailure, List<Room>> failureOrRooms) {
    return _RoomsReceived(
      failureOrRooms,
    );
  }
}

/// @nodoc
const $RoomWatcherEvent = _$RoomWatcherEventTearOff();

/// @nodoc
mixin _$RoomWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String query) roomSearched,
    required TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)
        roomsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_RoomSearched value) roomSearched,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomWatcherEventCopyWith<$Res> {
  factory $RoomWatcherEventCopyWith(
          RoomWatcherEvent value, $Res Function(RoomWatcherEvent) then) =
      _$RoomWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomWatcherEventCopyWithImpl<$Res>
    implements $RoomWatcherEventCopyWith<$Res> {
  _$RoomWatcherEventCopyWithImpl(this._value, this._then);

  final RoomWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(RoomWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$RoomWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'RoomWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String query) roomSearched,
    required TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)
        roomsReceived,
  }) {
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
  }) {
    return watchAllStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_RoomSearched value) roomSearched,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) {
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
  }) {
    return watchAllStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) {
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements RoomWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$RoomSearchedCopyWith<$Res> {
  factory _$RoomSearchedCopyWith(
          _RoomSearched value, $Res Function(_RoomSearched) then) =
      __$RoomSearchedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$RoomSearchedCopyWithImpl<$Res>
    extends _$RoomWatcherEventCopyWithImpl<$Res>
    implements _$RoomSearchedCopyWith<$Res> {
  __$RoomSearchedCopyWithImpl(
      _RoomSearched _value, $Res Function(_RoomSearched) _then)
      : super(_value, (v) => _then(v as _RoomSearched));

  @override
  _RoomSearched get _value => super._value as _RoomSearched;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_RoomSearched(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RoomSearched implements _RoomSearched {
  const _$_RoomSearched(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'RoomWatcherEvent.roomSearched(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomSearched &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$RoomSearchedCopyWith<_RoomSearched> get copyWith =>
      __$RoomSearchedCopyWithImpl<_RoomSearched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String query) roomSearched,
    required TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)
        roomsReceived,
  }) {
    return roomSearched(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
  }) {
    return roomSearched?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) {
    if (roomSearched != null) {
      return roomSearched(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_RoomSearched value) roomSearched,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) {
    return roomSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
  }) {
    return roomSearched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) {
    if (roomSearched != null) {
      return roomSearched(this);
    }
    return orElse();
  }
}

abstract class _RoomSearched implements RoomWatcherEvent {
  const factory _RoomSearched(String query) = _$_RoomSearched;

  String get query;
  @JsonKey(ignore: true)
  _$RoomSearchedCopyWith<_RoomSearched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RoomsReceivedCopyWith<$Res> {
  factory _$RoomsReceivedCopyWith(
          _RoomsReceived value, $Res Function(_RoomsReceived) then) =
      __$RoomsReceivedCopyWithImpl<$Res>;
  $Res call({Either<RoomFailure, List<Room>> failureOrRooms});
}

/// @nodoc
class __$RoomsReceivedCopyWithImpl<$Res>
    extends _$RoomWatcherEventCopyWithImpl<$Res>
    implements _$RoomsReceivedCopyWith<$Res> {
  __$RoomsReceivedCopyWithImpl(
      _RoomsReceived _value, $Res Function(_RoomsReceived) _then)
      : super(_value, (v) => _then(v as _RoomsReceived));

  @override
  _RoomsReceived get _value => super._value as _RoomsReceived;

  @override
  $Res call({
    Object? failureOrRooms = freezed,
  }) {
    return _then(_RoomsReceived(
      failureOrRooms == freezed
          ? _value.failureOrRooms
          : failureOrRooms // ignore: cast_nullable_to_non_nullable
              as Either<RoomFailure, List<Room>>,
    ));
  }
}

/// @nodoc

class _$_RoomsReceived implements _RoomsReceived {
  const _$_RoomsReceived(this.failureOrRooms);

  @override
  final Either<RoomFailure, List<Room>> failureOrRooms;

  @override
  String toString() {
    return 'RoomWatcherEvent.roomsReceived(failureOrRooms: $failureOrRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrRooms, failureOrRooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrRooms));

  @JsonKey(ignore: true)
  @override
  _$RoomsReceivedCopyWith<_RoomsReceived> get copyWith =>
      __$RoomsReceivedCopyWithImpl<_RoomsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllStarted,
    required TResult Function(String query) roomSearched,
    required TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)
        roomsReceived,
  }) {
    return roomsReceived(failureOrRooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
  }) {
    return roomsReceived?.call(failureOrRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllStarted,
    TResult Function(String query)? roomSearched,
    TResult Function(Either<RoomFailure, List<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) {
    if (roomsReceived != null) {
      return roomsReceived(failureOrRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllStarted value) watchAllStarted,
    required TResult Function(_RoomSearched value) roomSearched,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) {
    return roomsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
  }) {
    return roomsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllStarted value)? watchAllStarted,
    TResult Function(_RoomSearched value)? roomSearched,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) {
    if (roomsReceived != null) {
      return roomsReceived(this);
    }
    return orElse();
  }
}

abstract class _RoomsReceived implements RoomWatcherEvent {
  const factory _RoomsReceived(Either<RoomFailure, List<Room>> failureOrRooms) =
      _$_RoomsReceived;

  Either<RoomFailure, List<Room>> get failureOrRooms;
  @JsonKey(ignore: true)
  _$RoomsReceivedCopyWith<_RoomsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoomWatcherStateTearOff {
  const _$RoomWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Room> rooms) {
    return _LoadSuccess(
      rooms,
    );
  }

  _LoadFailure loadFailure(RoomFailure roomFailure) {
    return _LoadFailure(
      roomFailure,
    );
  }
}

/// @nodoc
const $RoomWatcherState = _$RoomWatcherStateTearOff();

/// @nodoc
mixin _$RoomWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Room> rooms) loadSuccess,
    required TResult Function(RoomFailure roomFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
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
abstract class $RoomWatcherStateCopyWith<$Res> {
  factory $RoomWatcherStateCopyWith(
          RoomWatcherState value, $Res Function(RoomWatcherState) then) =
      _$RoomWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomWatcherStateCopyWithImpl<$Res>
    implements $RoomWatcherStateCopyWith<$Res> {
  _$RoomWatcherStateCopyWithImpl(this._value, this._then);

  final RoomWatcherState _value;
  // ignore: unused_field
  final $Res Function(RoomWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$RoomWatcherStateCopyWithImpl<$Res>
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
    return 'RoomWatcherState.initial()';
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
    required TResult Function(List<Room> rooms) loadSuccess,
    required TResult Function(RoomFailure roomFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
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

abstract class _Initial implements RoomWatcherState {
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
    extends _$RoomWatcherStateCopyWithImpl<$Res>
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
    return 'RoomWatcherState.loadInProgress()';
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
    required TResult Function(List<Room> rooms) loadSuccess,
    required TResult Function(RoomFailure roomFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
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

abstract class _LoadInProgress implements RoomWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Room> rooms});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$RoomWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_LoadSuccess(
      rooms == freezed
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.rooms);

  @override
  final List<Room> rooms;

  @override
  String toString() {
    return 'RoomWatcherState.loadSuccess(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.rooms, rooms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rooms));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Room> rooms) loadSuccess,
    required TResult Function(RoomFailure roomFailure) loadFailure,
  }) {
    return loadSuccess(rooms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
  }) {
    return loadSuccess?.call(rooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(rooms);
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

abstract class _LoadSuccess implements RoomWatcherState {
  const factory _LoadSuccess(List<Room> rooms) = _$_LoadSuccess;

  List<Room> get rooms;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({RoomFailure roomFailure});

  $RoomFailureCopyWith<$Res> get roomFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$RoomWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? roomFailure = freezed,
  }) {
    return _then(_LoadFailure(
      roomFailure == freezed
          ? _value.roomFailure
          : roomFailure // ignore: cast_nullable_to_non_nullable
              as RoomFailure,
    ));
  }

  @override
  $RoomFailureCopyWith<$Res> get roomFailure {
    return $RoomFailureCopyWith<$Res>(_value.roomFailure, (value) {
      return _then(_value.copyWith(roomFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.roomFailure);

  @override
  final RoomFailure roomFailure;

  @override
  String toString() {
    return 'RoomWatcherState.loadFailure(roomFailure: $roomFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.roomFailure, roomFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(roomFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Room> rooms) loadSuccess,
    required TResult Function(RoomFailure roomFailure) loadFailure,
  }) {
    return loadFailure(roomFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
  }) {
    return loadFailure?.call(roomFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Room> rooms)? loadSuccess,
    TResult Function(RoomFailure roomFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(roomFailure);
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

abstract class _LoadFailure implements RoomWatcherState {
  const factory _LoadFailure(RoomFailure roomFailure) = _$_LoadFailure;

  RoomFailure get roomFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
