import 'package:dartz/dartz.dart';
import 'package:flutter_calling_app/domain/room/room.dart';
import 'room_failure.dart';

abstract class IRoomRepository {
  Stream<Either<RoomFailure, List<Room>>> watchAll();
  Future<Either<RoomFailure, Unit>> create(Room room);
  Future<Either<RoomFailure, Unit>> delete(Room room);
  Future<Either<RoomFailure, Room>> getRoom(Room room);
  Stream<Either<RoomFailure, List<Room>>> search(String query);
  // Stream<Room> initAgora(Room room);
}
