import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/room/room.dart';

part 'room_settings_event.dart';
part 'room_settings_state.dart';
part 'room_settings_bloc.freezed.dart';

class RoomSettingsBloc extends Bloc<RoomSettingsEvent, RoomSettingsState> {
  RoomSettingsBloc() : super(RoomSettingsState.initial()) {
    on<RoomSettingsEvent>((event, emit) {
      event.map(
        roomNameChanged: (e) {
          emit(
            state.copyWith(
              room: state.room.copyWith(
                roomName: e.roomName,
              ),
            ),
          );
        },
        roomVideoToggleChanged: (e) {
          emit(
            state.copyWith(
              room: state.room.copyWith(
                isVideoAllowed: e.isVideoAllowed,
              ),
            ),
          );
        },
        sent: (e) {
          emit(
            state.copyWith(
              room: e.room,
              showErrorMessage: false,
              isSubmitting: true,
            ),
          );
        },
        roomIdInitialized: (e) {
          emit(
            state.copyWith(
              room: state.room.copyWith(roomId: e.roomId),
            ),
          );
        },
      );
    });
  }
}
