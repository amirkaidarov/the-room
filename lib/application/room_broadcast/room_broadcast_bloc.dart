import 'package:bloc/bloc.dart';
import 'package:flutter_calling_app/domain/room/i_room_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/room/room.dart';

part 'room_broadcast_event.dart';
part 'room_broadcast_state.dart';
part 'room_broadcast_bloc.freezed.dart';

class RoomBroadcastBloc extends Bloc<RoomBroadcastEvent, RoomBroadcastState> {
  IRoomRepository roomRepository;
  RoomBroadcastBloc({required this.roomRepository})
      : super(const RoomBroadcastState.initial()) {
    on<RoomBroadcastEvent>((event, emit) async {
      await event.map(
        closeRoom: (e) async {
          final roomOrFailure = await roomRepository.getRoom(e.room);
          final room = roomOrFailure.fold((l) => Room.empty(), (r) => r);

          final updatedRoom = room.copyWith(
            roomCreatorId: room.roomId,
            peopleNumber: room.peopleNumber - 1,
          );
          if (updatedRoom.peopleNumber > 0) {
            await roomRepository.create(updatedRoom);
          } else {
            await roomRepository.delete(updatedRoom);
          }
          emit(const RoomBroadcastState.roomClosed());
        },
        updateRoom: (e) async {
          final roomOrFailure = await roomRepository.getRoom(e.room);
          final updatedRoom = roomOrFailure.fold((l) => Room.empty(), (r) => r);
          emit(RoomBroadcastState.roomEntered(updatedRoom));
        },
        createRoom: (e) async {
          final room = e.room.copyWith(
            roomCreatorId: e.room.roomId,
            peopleNumber: 1,
          );
          await roomRepository.create(room);
          emit(RoomBroadcastState.roomEntered(room));
        },
        joinRoom: (e) async {
          final room = e.room.copyWith(
            roomCreatorId: e.room.roomId,
            peopleNumber: e.room.peopleNumber + 1,
          );
          await roomRepository.create(room);
          emit(RoomBroadcastState.roomEntered(room));
        },
      );
    });
  }
}
