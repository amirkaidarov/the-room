// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_broadcast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomBroadcastEventTearOff {
  const _$RoomBroadcastEventTearOff();

  _CreateRoom createRoom(Room room) {
    return _CreateRoom(
      room,
    );
  }

  _JoinRoom joinRoom(Room room) {
    return _JoinRoom(
      room,
    );
  }

  _CloseRoom closeRoom(Room room, String uid) {
    return _CloseRoom(
      room,
      uid,
    );
  }

  _UpdateRoom updateRoom(Room room) {
    return _UpdateRoom(
      room,
    );
  }
}

/// @nodoc
const $RoomBroadcastEvent = _$RoomBroadcastEventTearOff();

/// @nodoc
mixin _$RoomBroadcastEvent {
  Room get room => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) createRoom,
    required TResult Function(Room room) joinRoom,
    required TResult Function(Room room, String uid) closeRoom,
    required TResult Function(Room room) updateRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_JoinRoom value) joinRoom,
    required TResult Function(_CloseRoom value) closeRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomBroadcastEventCopyWith<RoomBroadcastEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBroadcastEventCopyWith<$Res> {
  factory $RoomBroadcastEventCopyWith(
          RoomBroadcastEvent value, $Res Function(RoomBroadcastEvent) then) =
      _$RoomBroadcastEventCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$RoomBroadcastEventCopyWithImpl<$Res>
    implements $RoomBroadcastEventCopyWith<$Res> {
  _$RoomBroadcastEventCopyWithImpl(this._value, this._then);

  final RoomBroadcastEvent _value;
  // ignore: unused_field
  final $Res Function(RoomBroadcastEvent) _then;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc
abstract class _$CreateRoomCopyWith<$Res>
    implements $RoomBroadcastEventCopyWith<$Res> {
  factory _$CreateRoomCopyWith(
          _CreateRoom value, $Res Function(_CreateRoom) then) =
      __$CreateRoomCopyWithImpl<$Res>;
  @override
  $Res call({Room room});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$CreateRoomCopyWithImpl<$Res>
    extends _$RoomBroadcastEventCopyWithImpl<$Res>
    implements _$CreateRoomCopyWith<$Res> {
  __$CreateRoomCopyWithImpl(
      _CreateRoom _value, $Res Function(_CreateRoom) _then)
      : super(_value, (v) => _then(v as _CreateRoom));

  @override
  _CreateRoom get _value => super._value as _CreateRoom;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_CreateRoom(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$_CreateRoom implements _CreateRoom {
  const _$_CreateRoom(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomBroadcastEvent.createRoom(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateRoom &&
            const DeepCollectionEquality().equals(other.room, room));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(room));

  @JsonKey(ignore: true)
  @override
  _$CreateRoomCopyWith<_CreateRoom> get copyWith =>
      __$CreateRoomCopyWithImpl<_CreateRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) createRoom,
    required TResult Function(Room room) joinRoom,
    required TResult Function(Room room, String uid) closeRoom,
    required TResult Function(Room room) updateRoom,
  }) {
    return createRoom(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
  }) {
    return createRoom?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_JoinRoom value) joinRoom,
    required TResult Function(_CloseRoom value) closeRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
  }) {
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
  }) {
    return createRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateRoom implements RoomBroadcastEvent {
  const factory _CreateRoom(Room room) = _$_CreateRoom;

  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$CreateRoomCopyWith<_CreateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$JoinRoomCopyWith<$Res>
    implements $RoomBroadcastEventCopyWith<$Res> {
  factory _$JoinRoomCopyWith(_JoinRoom value, $Res Function(_JoinRoom) then) =
      __$JoinRoomCopyWithImpl<$Res>;
  @override
  $Res call({Room room});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$JoinRoomCopyWithImpl<$Res>
    extends _$RoomBroadcastEventCopyWithImpl<$Res>
    implements _$JoinRoomCopyWith<$Res> {
  __$JoinRoomCopyWithImpl(_JoinRoom _value, $Res Function(_JoinRoom) _then)
      : super(_value, (v) => _then(v as _JoinRoom));

  @override
  _JoinRoom get _value => super._value as _JoinRoom;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_JoinRoom(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$_JoinRoom implements _JoinRoom {
  const _$_JoinRoom(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomBroadcastEvent.joinRoom(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JoinRoom &&
            const DeepCollectionEquality().equals(other.room, room));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(room));

  @JsonKey(ignore: true)
  @override
  _$JoinRoomCopyWith<_JoinRoom> get copyWith =>
      __$JoinRoomCopyWithImpl<_JoinRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) createRoom,
    required TResult Function(Room room) joinRoom,
    required TResult Function(Room room, String uid) closeRoom,
    required TResult Function(Room room) updateRoom,
  }) {
    return joinRoom(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
  }) {
    return joinRoom?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_JoinRoom value) joinRoom,
    required TResult Function(_CloseRoom value) closeRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
  }) {
    return joinRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
  }) {
    return joinRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(this);
    }
    return orElse();
  }
}

abstract class _JoinRoom implements RoomBroadcastEvent {
  const factory _JoinRoom(Room room) = _$_JoinRoom;

  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$JoinRoomCopyWith<_JoinRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CloseRoomCopyWith<$Res>
    implements $RoomBroadcastEventCopyWith<$Res> {
  factory _$CloseRoomCopyWith(
          _CloseRoom value, $Res Function(_CloseRoom) then) =
      __$CloseRoomCopyWithImpl<$Res>;
  @override
  $Res call({Room room, String uid});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$CloseRoomCopyWithImpl<$Res>
    extends _$RoomBroadcastEventCopyWithImpl<$Res>
    implements _$CloseRoomCopyWith<$Res> {
  __$CloseRoomCopyWithImpl(_CloseRoom _value, $Res Function(_CloseRoom) _then)
      : super(_value, (v) => _then(v as _CloseRoom));

  @override
  _CloseRoom get _value => super._value as _CloseRoom;

  @override
  $Res call({
    Object? room = freezed,
    Object? uid = freezed,
  }) {
    return _then(_CloseRoom(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CloseRoom implements _CloseRoom {
  const _$_CloseRoom(this.room, this.uid);

  @override
  final Room room;
  @override
  final String uid;

  @override
  String toString() {
    return 'RoomBroadcastEvent.closeRoom(room: $room, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CloseRoom &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other.uid, uid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(uid));

  @JsonKey(ignore: true)
  @override
  _$CloseRoomCopyWith<_CloseRoom> get copyWith =>
      __$CloseRoomCopyWithImpl<_CloseRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) createRoom,
    required TResult Function(Room room) joinRoom,
    required TResult Function(Room room, String uid) closeRoom,
    required TResult Function(Room room) updateRoom,
  }) {
    return closeRoom(room, uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
  }) {
    return closeRoom?.call(room, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
    required TResult orElse(),
  }) {
    if (closeRoom != null) {
      return closeRoom(room, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_JoinRoom value) joinRoom,
    required TResult Function(_CloseRoom value) closeRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
  }) {
    return closeRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
  }) {
    return closeRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    required TResult orElse(),
  }) {
    if (closeRoom != null) {
      return closeRoom(this);
    }
    return orElse();
  }
}

abstract class _CloseRoom implements RoomBroadcastEvent {
  const factory _CloseRoom(Room room, String uid) = _$_CloseRoom;

  @override
  Room get room;
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$CloseRoomCopyWith<_CloseRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateRoomCopyWith<$Res>
    implements $RoomBroadcastEventCopyWith<$Res> {
  factory _$UpdateRoomCopyWith(
          _UpdateRoom value, $Res Function(_UpdateRoom) then) =
      __$UpdateRoomCopyWithImpl<$Res>;
  @override
  $Res call({Room room});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$UpdateRoomCopyWithImpl<$Res>
    extends _$RoomBroadcastEventCopyWithImpl<$Res>
    implements _$UpdateRoomCopyWith<$Res> {
  __$UpdateRoomCopyWithImpl(
      _UpdateRoom _value, $Res Function(_UpdateRoom) _then)
      : super(_value, (v) => _then(v as _UpdateRoom));

  @override
  _UpdateRoom get _value => super._value as _UpdateRoom;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_UpdateRoom(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }
}

/// @nodoc

class _$_UpdateRoom implements _UpdateRoom {
  const _$_UpdateRoom(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomBroadcastEvent.updateRoom(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateRoom &&
            const DeepCollectionEquality().equals(other.room, room));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(room));

  @JsonKey(ignore: true)
  @override
  _$UpdateRoomCopyWith<_UpdateRoom> get copyWith =>
      __$UpdateRoomCopyWithImpl<_UpdateRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) createRoom,
    required TResult Function(Room room) joinRoom,
    required TResult Function(Room room, String uid) closeRoom,
    required TResult Function(Room room) updateRoom,
  }) {
    return updateRoom(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
  }) {
    return updateRoom?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? createRoom,
    TResult Function(Room room)? joinRoom,
    TResult Function(Room room, String uid)? closeRoom,
    TResult Function(Room room)? updateRoom,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateRoom value) createRoom,
    required TResult Function(_JoinRoom value) joinRoom,
    required TResult Function(_CloseRoom value) closeRoom,
    required TResult Function(_UpdateRoom value) updateRoom,
  }) {
    return updateRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
  }) {
    return updateRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateRoom value)? createRoom,
    TResult Function(_JoinRoom value)? joinRoom,
    TResult Function(_CloseRoom value)? closeRoom,
    TResult Function(_UpdateRoom value)? updateRoom,
    required TResult orElse(),
  }) {
    if (updateRoom != null) {
      return updateRoom(this);
    }
    return orElse();
  }
}

abstract class _UpdateRoom implements RoomBroadcastEvent {
  const factory _UpdateRoom(Room room) = _$_UpdateRoom;

  @override
  Room get room;
  @override
  @JsonKey(ignore: true)
  _$UpdateRoomCopyWith<_UpdateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoomBroadcastStateTearOff {
  const _$RoomBroadcastStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _RoomEntered roomEntered(Room room) {
    return _RoomEntered(
      room,
    );
  }

  _RoomClosed roomClosed() {
    return const _RoomClosed();
  }
}

/// @nodoc
const $RoomBroadcastState = _$RoomBroadcastStateTearOff();

/// @nodoc
mixin _$RoomBroadcastState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomEntered,
    required TResult Function() roomClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RoomEntered value) roomEntered,
    required TResult Function(_RoomClosed value) roomClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomBroadcastStateCopyWith<$Res> {
  factory $RoomBroadcastStateCopyWith(
          RoomBroadcastState value, $Res Function(RoomBroadcastState) then) =
      _$RoomBroadcastStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomBroadcastStateCopyWithImpl<$Res>
    implements $RoomBroadcastStateCopyWith<$Res> {
  _$RoomBroadcastStateCopyWithImpl(this._value, this._then);

  final RoomBroadcastState _value;
  // ignore: unused_field
  final $Res Function(RoomBroadcastState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$RoomBroadcastStateCopyWithImpl<$Res>
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
    return 'RoomBroadcastState.initial()';
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
    required TResult Function(Room room) roomEntered,
    required TResult Function() roomClosed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
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
    required TResult Function(_RoomEntered value) roomEntered,
    required TResult Function(_RoomClosed value) roomClosed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RoomBroadcastState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$RoomEnteredCopyWith<$Res> {
  factory _$RoomEnteredCopyWith(
          _RoomEntered value, $Res Function(_RoomEntered) then) =
      __$RoomEnteredCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$RoomEnteredCopyWithImpl<$Res>
    extends _$RoomBroadcastStateCopyWithImpl<$Res>
    implements _$RoomEnteredCopyWith<$Res> {
  __$RoomEnteredCopyWithImpl(
      _RoomEntered _value, $Res Function(_RoomEntered) _then)
      : super(_value, (v) => _then(v as _RoomEntered));

  @override
  _RoomEntered get _value => super._value as _RoomEntered;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_RoomEntered(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$_RoomEntered implements _RoomEntered {
  const _$_RoomEntered(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomBroadcastState.roomEntered(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomEntered &&
            const DeepCollectionEquality().equals(other.room, room));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(room));

  @JsonKey(ignore: true)
  @override
  _$RoomEnteredCopyWith<_RoomEntered> get copyWith =>
      __$RoomEnteredCopyWithImpl<_RoomEntered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomEntered,
    required TResult Function() roomClosed,
  }) {
    return roomEntered(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
  }) {
    return roomEntered?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
    required TResult orElse(),
  }) {
    if (roomEntered != null) {
      return roomEntered(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RoomEntered value) roomEntered,
    required TResult Function(_RoomClosed value) roomClosed,
  }) {
    return roomEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
  }) {
    return roomEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
    required TResult orElse(),
  }) {
    if (roomEntered != null) {
      return roomEntered(this);
    }
    return orElse();
  }
}

abstract class _RoomEntered implements RoomBroadcastState {
  const factory _RoomEntered(Room room) = _$_RoomEntered;

  Room get room;
  @JsonKey(ignore: true)
  _$RoomEnteredCopyWith<_RoomEntered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RoomClosedCopyWith<$Res> {
  factory _$RoomClosedCopyWith(
          _RoomClosed value, $Res Function(_RoomClosed) then) =
      __$RoomClosedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RoomClosedCopyWithImpl<$Res>
    extends _$RoomBroadcastStateCopyWithImpl<$Res>
    implements _$RoomClosedCopyWith<$Res> {
  __$RoomClosedCopyWithImpl(
      _RoomClosed _value, $Res Function(_RoomClosed) _then)
      : super(_value, (v) => _then(v as _RoomClosed));

  @override
  _RoomClosed get _value => super._value as _RoomClosed;
}

/// @nodoc

class _$_RoomClosed implements _RoomClosed {
  const _$_RoomClosed();

  @override
  String toString() {
    return 'RoomBroadcastState.roomClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RoomClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomEntered,
    required TResult Function() roomClosed,
  }) {
    return roomClosed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
  }) {
    return roomClosed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomEntered,
    TResult Function()? roomClosed,
    required TResult orElse(),
  }) {
    if (roomClosed != null) {
      return roomClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RoomEntered value) roomEntered,
    required TResult Function(_RoomClosed value) roomClosed,
  }) {
    return roomClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
  }) {
    return roomClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RoomEntered value)? roomEntered,
    TResult Function(_RoomClosed value)? roomClosed,
    required TResult orElse(),
  }) {
    if (roomClosed != null) {
      return roomClosed(this);
    }
    return orElse();
  }
}

abstract class _RoomClosed implements RoomBroadcastState {
  const factory _RoomClosed() = _$_RoomClosed;
}
