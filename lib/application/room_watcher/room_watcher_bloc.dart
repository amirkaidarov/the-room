import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/room/i_room_repository.dart';
import '../../domain/room/room.dart';
import '../../domain/room/room_failure.dart';

part 'room_watcher_event.dart';
part 'room_watcher_state.dart';
part 'room_watcher_bloc.freezed.dart';

class RoomWatcherBloc extends Bloc<RoomWatcherEvent, RoomWatcherState> {
  final IRoomRepository roomRepository;
  StreamSubscription<Either<RoomFailure, List<Room>>>? _roomStreamSubscription;

  RoomWatcherBloc({required this.roomRepository})
      : super(const RoomWatcherState.initial()) {
    on<RoomWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(
            const RoomWatcherState.loadInProgress(),
          );
          _roomStreamSubscription?.cancel();
          _roomStreamSubscription = roomRepository.watchAll().listen(
            (failureOrRoom) {
              add(
                $RoomWatcherEvent.roomsReceived(failureOrRoom),
              );
            },
          );
        },
        roomsReceived: (e) {
          e.failureOrRooms.fold(
            (f) => emit(
              RoomWatcherState.loadFailure(f),
            ),
            (rooms) => emit(
              RoomWatcherState.loadSuccess(
                rooms,
              ),
            ),
          );
        },
        roomSearched: (e) {
          emit(
            const RoomWatcherState.loadInProgress(),
          );
          _roomStreamSubscription?.cancel();
          _roomStreamSubscription =
              roomRepository.search(e.query).listen((failureOrRoom) {
            add(
              $RoomWatcherEvent.roomsReceived(failureOrRoom),
            );
          });
        },
      );
    });
  }
}
