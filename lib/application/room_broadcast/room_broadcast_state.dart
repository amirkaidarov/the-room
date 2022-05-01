part of 'room_broadcast_bloc.dart';

@freezed
class RoomBroadcastState with _$RoomBroadcastState {
  const factory RoomBroadcastState.initial() = _Initial;
  const factory RoomBroadcastState.roomEntered(Room room) = _RoomEntered;
  const factory RoomBroadcastState.roomClosed() = _RoomClosed;
}
