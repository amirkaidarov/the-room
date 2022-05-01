part of 'room_settings_bloc.dart';

@freezed
class RoomSettingsEvent with _$RoomSettingsEvent {
  const factory RoomSettingsEvent.roomNameChanged(String roomName) = RoomNameChanged;
  const factory RoomSettingsEvent.roomVideoToggleChanged(bool isVideoAllowed) = RoomVideoToggleChanged;
  const factory RoomSettingsEvent.roomIdInitialized(String roomId) = RoomIdInitialized;
  const factory RoomSettingsEvent.sent(Room room) = Sent;
}