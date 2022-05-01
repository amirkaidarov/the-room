import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
abstract class Room implements _$Room {
  const Room._();

  const factory Room({
    required String roomId,
    required String roomName,
    required bool isVideoAllowed,
    required String roomCreatorId,
    required int peopleNumber,
  }) = _Room;

  factory Room.empty() => const Room(
        roomId: '',
        roomName: '',
        isVideoAllowed: false,
        roomCreatorId: '',
        peopleNumber: 0,
      );
    
  

  factory Room.toDomain(
    String roomId,
    String roomName,
    bool isVideoAllowed,
    String roomCreatorId,
    int peopleNumber,
  ) =>
      Room(
        roomId: roomId,
        roomName: roomName,
        isVideoAllowed: isVideoAllowed,
        roomCreatorId: roomCreatorId,
        peopleNumber: peopleNumber,
      );
}
