part of 'room_broadcast_bloc.dart';

@freezed
class RoomBroadcastEvent with _$RoomBroadcastEvent {
  const factory RoomBroadcastEvent.createRoom(Room room) = _CreateRoom;
  const factory RoomBroadcastEvent.joinRoom(Room room) = _JoinRoom;
  const factory RoomBroadcastEvent.closeRoom(Room room, String uid) =
      _CloseRoom;
  // const factory RoomBroadcastEvent.someoneLeftRoom(Room room) = _SomeoneLeftRoom;
  // const factory RoomBroadcastEvent.someoneJoinedRoom(Room room) = _SomeoneJoinedRoom;
  const factory RoomBroadcastEvent.updateRoom(Room room) =
      _UpdateRoom;
}
