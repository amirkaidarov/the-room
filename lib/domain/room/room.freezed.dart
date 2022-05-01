// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

  _Room call(
      {required String roomId,
      required String roomName,
      required bool isVideoAllowed,
      required String roomCreatorId,
      required int peopleNumber}) {
    return _Room(
      roomId: roomId,
      roomName: roomName,
      isVideoAllowed: isVideoAllowed,
      roomCreatorId: roomCreatorId,
      peopleNumber: peopleNumber,
    );
  }
}

/// @nodoc
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  String get roomId => throw _privateConstructorUsedError;
  String get roomName => throw _privateConstructorUsedError;
  bool get isVideoAllowed => throw _privateConstructorUsedError;
  String get roomCreatorId => throw _privateConstructorUsedError;
  int get peopleNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {String roomId,
      String roomName,
      bool isVideoAllowed,
      String roomCreatorId,
      int peopleNumber});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? isVideoAllowed = freezed,
    Object? roomCreatorId = freezed,
    Object? peopleNumber = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      isVideoAllowed: isVideoAllowed == freezed
          ? _value.isVideoAllowed
          : isVideoAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      roomCreatorId: roomCreatorId == freezed
          ? _value.roomCreatorId
          : roomCreatorId // ignore: cast_nullable_to_non_nullable
              as String,
      peopleNumber: peopleNumber == freezed
          ? _value.peopleNumber
          : peopleNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {String roomId,
      String roomName,
      bool isVideoAllowed,
      String roomCreatorId,
      int peopleNumber});
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object? roomId = freezed,
    Object? roomName = freezed,
    Object? isVideoAllowed = freezed,
    Object? roomCreatorId = freezed,
    Object? peopleNumber = freezed,
  }) {
    return _then(_Room(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      roomName: roomName == freezed
          ? _value.roomName
          : roomName // ignore: cast_nullable_to_non_nullable
              as String,
      isVideoAllowed: isVideoAllowed == freezed
          ? _value.isVideoAllowed
          : isVideoAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      roomCreatorId: roomCreatorId == freezed
          ? _value.roomCreatorId
          : roomCreatorId // ignore: cast_nullable_to_non_nullable
              as String,
      peopleNumber: peopleNumber == freezed
          ? _value.peopleNumber
          : peopleNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Room extends _Room {
  const _$_Room(
      {required this.roomId,
      required this.roomName,
      required this.isVideoAllowed,
      required this.roomCreatorId,
      required this.peopleNumber})
      : super._();

  @override
  final String roomId;
  @override
  final String roomName;
  @override
  final bool isVideoAllowed;
  @override
  final String roomCreatorId;
  @override
  final int peopleNumber;

  @override
  String toString() {
    return 'Room(roomId: $roomId, roomName: $roomName, isVideoAllowed: $isVideoAllowed, roomCreatorId: $roomCreatorId, peopleNumber: $peopleNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Room &&
            const DeepCollectionEquality().equals(other.roomId, roomId) &&
            const DeepCollectionEquality().equals(other.roomName, roomName) &&
            const DeepCollectionEquality()
                .equals(other.isVideoAllowed, isVideoAllowed) &&
            const DeepCollectionEquality()
                .equals(other.roomCreatorId, roomCreatorId) &&
            const DeepCollectionEquality()
                .equals(other.peopleNumber, peopleNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomId),
      const DeepCollectionEquality().hash(roomName),
      const DeepCollectionEquality().hash(isVideoAllowed),
      const DeepCollectionEquality().hash(roomCreatorId),
      const DeepCollectionEquality().hash(peopleNumber));

  @JsonKey(ignore: true)
  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);
}

abstract class _Room extends Room {
  const factory _Room(
      {required String roomId,
      required String roomName,
      required bool isVideoAllowed,
      required String roomCreatorId,
      required int peopleNumber}) = _$_Room;
  const _Room._() : super._();

  @override
  String get roomId;
  @override
  String get roomName;
  @override
  bool get isVideoAllowed;
  @override
  String get roomCreatorId;
  @override
  int get peopleNumber;
  @override
  @JsonKey(ignore: true)
  _$RoomCopyWith<_Room> get copyWith => throw _privateConstructorUsedError;
}
