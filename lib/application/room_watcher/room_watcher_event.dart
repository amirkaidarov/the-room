part of 'room_watcher_bloc.dart';

@freezed
class RoomWatcherEvent with _$RoomWatcherEvent {
  const factory RoomWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory RoomWatcherEvent.roomSearched(String query) = _RoomSearched;
  const factory RoomWatcherEvent.roomsReceived(
      Either<RoomFailure, List<Room>> failureOrRooms) = _RoomsReceived;

}
