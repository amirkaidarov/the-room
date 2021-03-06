part of 'room_watcher_bloc.dart';

@freezed
class RoomWatcherState with _$RoomWatcherState {
  const factory RoomWatcherState.initial() = _Initial;
  const factory RoomWatcherState.loadInProgress() = _LoadInProgress;
  const factory RoomWatcherState.loadSuccess(List<Room> rooms) = _LoadSuccess;
  const factory RoomWatcherState.loadFailure(RoomFailure roomFailure) =
      _LoadFailure;
}
