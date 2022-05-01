part of 'room_settings_bloc.dart';

@freezed
class RoomSettingsState with _$RoomSettingsState {
  const factory RoomSettingsState({
    required Room room,
    required bool showErrorMessage,
    required bool isSubmitting,
  }) = _RoomSettingsState;

  factory RoomSettingsState.initial() => RoomSettingsState(
        room: Room.empty(),
        showErrorMessage: false,
        isSubmitting: false,
      );
}
