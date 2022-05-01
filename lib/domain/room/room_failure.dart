import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_failure.freezed.dart';

@freezed
abstract class RoomFailure with _$RoomFailure {
  const factory RoomFailure.unexpected() = _Unexpected;
  const factory RoomFailure.insufficientPermission() = _InsufficientPermission;
  const factory RoomFailure.unableToUpdate() = _UnableToUpdate;
}