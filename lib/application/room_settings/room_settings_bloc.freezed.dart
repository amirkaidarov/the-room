// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomSettingsEventTearOff {
  const _$RoomSettingsEventTearOff();

  RoomNameChanged roomNameChanged(String roomName) {
    return RoomNameChanged(
      roomName,
    );
  }

  RoomVideoToggleChanged roomVideoToggleChanged(bool isVideoAllowed) {
    return RoomVideoToggleChanged(
      isVideoAllowed,
    );
  }

  RoomIdInitialized roomIdInitialized(String roomId) {
    return RoomIdInitialized(
      roomId,
    );
  }

  Sent sent(Room room) {
    return Sent(
      room,
    );
  }
}

/// @nodoc
const $RoomSettingsEvent = _$RoomSettingsEventTearOff();

/// @nodoc
mixin _$RoomSettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) roomNameChanged,
    required TResult Function(bool isVideoAllowed) roomVideoToggleChanged,
    required TResult Function(String roomId) roomIdInitialized,
    required TResult Function(Room room) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomNameChanged value) roomNameChanged,
    required TResult Function(RoomVideoToggleChanged value)
        roomVideoToggleChanged,
    required TResult Function(RoomIdInitialized value) roomIdInitialized,
    required TResult Function(Sent value) sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomSettingsEventCopyWith<$Res> {
  factory $RoomSettingsEventCopyWith(
          RoomSettingsEvent value, $Res Function(RoomSettingsEvent) then) =
      _$RoomSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RoomSettingsEventCopyWithImpl<$Res>
    implements $RoomSettingsEventCopyWith<$Res> {
  _$RoomSettingsEventCopyWithImpl(this._value, this._then);

  final RoomSettingsEvent _value;
  // ignore: unused_field
  final $Res Function(RoomSettingsEvent) _then;
}

/// @nodoc
abstract class $RoomNameChangedCopyWith<$Res> {
  factory $RoomNameChangedCopyWith(
          RoomNameChanged value, $Res Function(RoomNameChanged) then) =
      _$RoomNameChangedCopyWithImpl<$Res>;
  $Res call({String roomName});
}

/// @nodoc
class _$RoomNameChangedCopyWithImpl<$Res>
    extends _$RoomSettingsEventCopyWithImpl<$Res>
    implements $RoomNameChangedCopyWith<$Res> {
  _$RoomNameChangedCopyWithImpl(
      RoomNameChanged _value, $Res Function(RoomNameChanged) _then)
      : super(_value, (v) => _then(v as RoomNameChanged));

  @override
  RoomNameChanged get _value => super._value as RoomNameChanged;

  @override
  $Res call({
    Object? roomName = freezed,
  }) {
    return _then(RoomNameChanged(
      roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomNameChanged implements RoomNameChanged {
  const _$RoomNameChanged(this.roomName);

  @override
  final String roomName;

  @override
  String toString() {
    return 'RoomSettingsEvent.roomNameChanged(roomName: $roomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomNameChanged &&
            const DeepCollectionEquality().equals(other.roomName, roomName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(roomName));

  @JsonKey(ignore: true)
  @override
  $RoomNameChangedCopyWith<RoomNameChanged> get copyWith =>
      _$RoomNameChangedCopyWithImpl<RoomNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) roomNameChanged,
    required TResult Function(bool isVideoAllowed) roomVideoToggleChanged,
    required TResult Function(String roomId) roomIdInitialized,
    required TResult Function(Room room) sent,
  }) {
    return roomNameChanged(roomName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
  }) {
    return roomNameChanged?.call(roomName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
    required TResult orElse(),
  }) {
    if (roomNameChanged != null) {
      return roomNameChanged(roomName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomNameChanged value) roomNameChanged,
    required TResult Function(RoomVideoToggleChanged value)
        roomVideoToggleChanged,
    required TResult Function(RoomIdInitialized value) roomIdInitialized,
    required TResult Function(Sent value) sent,
  }) {
    return roomNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
  }) {
    return roomNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
    required TResult orElse(),
  }) {
    if (roomNameChanged != null) {
      return roomNameChanged(this);
    }
    return orElse();
  }
}

abstract class RoomNameChanged implements RoomSettingsEvent {
  const factory RoomNameChanged(String roomName) = _$RoomNameChanged;

  String get roomName;
  @JsonKey(ignore: true)
  $RoomNameChangedCopyWith<RoomNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomVideoToggleChangedCopyWith<$Res> {
  factory $RoomVideoToggleChangedCopyWith(RoomVideoToggleChanged value,
          $Res Function(RoomVideoToggleChanged) then) =
      _$RoomVideoToggleChangedCopyWithImpl<$Res>;
  $Res call({bool isVideoAllowed});
}

/// @nodoc
class _$RoomVideoToggleChangedCopyWithImpl<$Res>
    extends _$RoomSettingsEventCopyWithImpl<$Res>
    implements $RoomVideoToggleChangedCopyWith<$Res> {
  _$RoomVideoToggleChangedCopyWithImpl(RoomVideoToggleChanged _value,
      $Res Function(RoomVideoToggleChanged) _then)
      : super(_value, (v) => _then(v as RoomVideoToggleChanged));

  @override
  RoomVideoToggleChanged get _value => super._value as RoomVideoToggleChanged;

  @override
  $Res call({
    Object? isVideoAllowed = freezed,
  }) {
    return _then(RoomVideoToggleChanged(
      isVideoAllowed == freezed
          ? _value.isVideoAllowed
          : isVideoAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RoomVideoToggleChanged implements RoomVideoToggleChanged {
  const _$RoomVideoToggleChanged(this.isVideoAllowed);

  @override
  final bool isVideoAllowed;

  @override
  String toString() {
    return 'RoomSettingsEvent.roomVideoToggleChanged(isVideoAllowed: $isVideoAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomVideoToggleChanged &&
            const DeepCollectionEquality()
                .equals(other.isVideoAllowed, isVideoAllowed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isVideoAllowed));

  @JsonKey(ignore: true)
  @override
  $RoomVideoToggleChangedCopyWith<RoomVideoToggleChanged> get copyWith =>
      _$RoomVideoToggleChangedCopyWithImpl<RoomVideoToggleChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) roomNameChanged,
    required TResult Function(bool isVideoAllowed) roomVideoToggleChanged,
    required TResult Function(String roomId) roomIdInitialized,
    required TResult Function(Room room) sent,
  }) {
    return roomVideoToggleChanged(isVideoAllowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
  }) {
    return roomVideoToggleChanged?.call(isVideoAllowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
    required TResult orElse(),
  }) {
    if (roomVideoToggleChanged != null) {
      return roomVideoToggleChanged(isVideoAllowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomNameChanged value) roomNameChanged,
    required TResult Function(RoomVideoToggleChanged value)
        roomVideoToggleChanged,
    required TResult Function(RoomIdInitialized value) roomIdInitialized,
    required TResult Function(Sent value) sent,
  }) {
    return roomVideoToggleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
  }) {
    return roomVideoToggleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
    required TResult orElse(),
  }) {
    if (roomVideoToggleChanged != null) {
      return roomVideoToggleChanged(this);
    }
    return orElse();
  }
}

abstract class RoomVideoToggleChanged implements RoomSettingsEvent {
  const factory RoomVideoToggleChanged(bool isVideoAllowed) =
      _$RoomVideoToggleChanged;

  bool get isVideoAllowed;
  @JsonKey(ignore: true)
  $RoomVideoToggleChangedCopyWith<RoomVideoToggleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomIdInitializedCopyWith<$Res> {
  factory $RoomIdInitializedCopyWith(
          RoomIdInitialized value, $Res Function(RoomIdInitialized) then) =
      _$RoomIdInitializedCopyWithImpl<$Res>;
  $Res call({String roomId});
}

/// @nodoc
class _$RoomIdInitializedCopyWithImpl<$Res>
    extends _$RoomSettingsEventCopyWithImpl<$Res>
    implements $RoomIdInitializedCopyWith<$Res> {
  _$RoomIdInitializedCopyWithImpl(
      RoomIdInitialized _value, $Res Function(RoomIdInitialized) _then)
      : super(_value, (v) => _then(v as RoomIdInitialized));

  @override
  RoomIdInitialized get _value => super._value as RoomIdInitialized;

  @override
  $Res call({
    Object? roomId = freezed,
  }) {
    return _then(RoomIdInitialized(
      roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoomIdInitialized implements RoomIdInitialized {
  const _$RoomIdInitialized(this.roomId);

  @override
  final String roomId;

  @override
  String toString() {
    return 'RoomSettingsEvent.roomIdInitialized(roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RoomIdInitialized &&
            const DeepCollectionEquality().equals(other.roomId, roomId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(roomId));

  @JsonKey(ignore: true)
  @override
  $RoomIdInitializedCopyWith<RoomIdInitialized> get copyWith =>
      _$RoomIdInitializedCopyWithImpl<RoomIdInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) roomNameChanged,
    required TResult Function(bool isVideoAllowed) roomVideoToggleChanged,
    required TResult Function(String roomId) roomIdInitialized,
    required TResult Function(Room room) sent,
  }) {
    return roomIdInitialized(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
  }) {
    return roomIdInitialized?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
    required TResult orElse(),
  }) {
    if (roomIdInitialized != null) {
      return roomIdInitialized(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomNameChanged value) roomNameChanged,
    required TResult Function(RoomVideoToggleChanged value)
        roomVideoToggleChanged,
    required TResult Function(RoomIdInitialized value) roomIdInitialized,
    required TResult Function(Sent value) sent,
  }) {
    return roomIdInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
  }) {
    return roomIdInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
    required TResult orElse(),
  }) {
    if (roomIdInitialized != null) {
      return roomIdInitialized(this);
    }
    return orElse();
  }
}

abstract class RoomIdInitialized implements RoomSettingsEvent {
  const factory RoomIdInitialized(String roomId) = _$RoomIdInitialized;

  String get roomId;
  @JsonKey(ignore: true)
  $RoomIdInitializedCopyWith<RoomIdInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentCopyWith<$Res> {
  factory $SentCopyWith(Sent value, $Res Function(Sent) then) =
      _$SentCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$SentCopyWithImpl<$Res> extends _$RoomSettingsEventCopyWithImpl<$Res>
    implements $SentCopyWith<$Res> {
  _$SentCopyWithImpl(Sent _value, $Res Function(Sent) _then)
      : super(_value, (v) => _then(v as Sent));

  @override
  Sent get _value => super._value as Sent;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(Sent(
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

class _$Sent implements Sent {
  const _$Sent(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'RoomSettingsEvent.sent(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sent &&
            const DeepCollectionEquality().equals(other.room, room));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(room));

  @JsonKey(ignore: true)
  @override
  $SentCopyWith<Sent> get copyWith =>
      _$SentCopyWithImpl<Sent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomName) roomNameChanged,
    required TResult Function(bool isVideoAllowed) roomVideoToggleChanged,
    required TResult Function(String roomId) roomIdInitialized,
    required TResult Function(Room room) sent,
  }) {
    return sent(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
  }) {
    return sent?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomName)? roomNameChanged,
    TResult Function(bool isVideoAllowed)? roomVideoToggleChanged,
    TResult Function(String roomId)? roomIdInitialized,
    TResult Function(Room room)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomNameChanged value) roomNameChanged,
    required TResult Function(RoomVideoToggleChanged value)
        roomVideoToggleChanged,
    required TResult Function(RoomIdInitialized value) roomIdInitialized,
    required TResult Function(Sent value) sent,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomNameChanged value)? roomNameChanged,
    TResult Function(RoomVideoToggleChanged value)? roomVideoToggleChanged,
    TResult Function(RoomIdInitialized value)? roomIdInitialized,
    TResult Function(Sent value)? sent,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class Sent implements RoomSettingsEvent {
  const factory Sent(Room room) = _$Sent;

  Room get room;
  @JsonKey(ignore: true)
  $SentCopyWith<Sent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$RoomSettingsStateTearOff {
  const _$RoomSettingsStateTearOff();

  _RoomSettingsState call(
      {required Room room,
      required bool showErrorMessage,
      required bool isSubmitting}) {
    return _RoomSettingsState(
      room: room,
      showErrorMessage: showErrorMessage,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $RoomSettingsState = _$RoomSettingsStateTearOff();

/// @nodoc
mixin _$RoomSettingsState {
  Room get room => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomSettingsStateCopyWith<RoomSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomSettingsStateCopyWith<$Res> {
  factory $RoomSettingsStateCopyWith(
          RoomSettingsState value, $Res Function(RoomSettingsState) then) =
      _$RoomSettingsStateCopyWithImpl<$Res>;
  $Res call({Room room, bool showErrorMessage, bool isSubmitting});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$RoomSettingsStateCopyWithImpl<$Res>
    implements $RoomSettingsStateCopyWith<$Res> {
  _$RoomSettingsStateCopyWithImpl(this._value, this._then);

  final RoomSettingsState _value;
  // ignore: unused_field
  final $Res Function(RoomSettingsState) _then;

  @override
  $Res call({
    Object? room = freezed,
    Object? showErrorMessage = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$RoomSettingsStateCopyWith<$Res>
    implements $RoomSettingsStateCopyWith<$Res> {
  factory _$RoomSettingsStateCopyWith(
          _RoomSettingsState value, $Res Function(_RoomSettingsState) then) =
      __$RoomSettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({Room room, bool showErrorMessage, bool isSubmitting});

  @override
  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$RoomSettingsStateCopyWithImpl<$Res>
    extends _$RoomSettingsStateCopyWithImpl<$Res>
    implements _$RoomSettingsStateCopyWith<$Res> {
  __$RoomSettingsStateCopyWithImpl(
      _RoomSettingsState _value, $Res Function(_RoomSettingsState) _then)
      : super(_value, (v) => _then(v as _RoomSettingsState));

  @override
  _RoomSettingsState get _value => super._value as _RoomSettingsState;

  @override
  $Res call({
    Object? room = freezed,
    Object? showErrorMessage = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_RoomSettingsState(
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RoomSettingsState implements _RoomSettingsState {
  const _$_RoomSettingsState(
      {required this.room,
      required this.showErrorMessage,
      required this.isSubmitting});

  @override
  final Room room;
  @override
  final bool showErrorMessage;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'RoomSettingsState(room: $room, showErrorMessage: $showErrorMessage, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RoomSettingsState &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
  _$RoomSettingsStateCopyWith<_RoomSettingsState> get copyWith =>
      __$RoomSettingsStateCopyWithImpl<_RoomSettingsState>(this, _$identity);
}

abstract class _RoomSettingsState implements RoomSettingsState {
  const factory _RoomSettingsState(
      {required Room room,
      required bool showErrorMessage,
      required bool isSubmitting}) = _$_RoomSettingsState;

  @override
  Room get room;
  @override
  bool get showErrorMessage;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$RoomSettingsStateCopyWith<_RoomSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
