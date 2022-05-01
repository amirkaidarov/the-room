import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import '../../domain/room/i_room_repository.dart';
import '../../domain/room/room.dart';
import '../../domain/room/room_failure.dart';

import '../core/firestore_helpers.dart';

const appId = '8f1b43e3e3aa4f95910a6fbf5a001148';

class RoomRepository implements IRoomRepository {
  final FirebaseFirestore firestore;

  RoomRepository({required this.firestore});

  @override
  Stream<Either<RoomFailure, List<Room>>> watchAll() async* {
    final roomsCollection = await firestore.roomsCollection();
    try {
      yield* roomsCollection
          .orderBy(
            'dateTime',
            descending: true,
          )
          .snapshots()
          .map(
            (snapshot) => right(
              snapshot.docs
                  .map(
                    (doc) => Room.toDomain(
                      doc.id,
                      doc['roomName'],
                      doc['isVideoAllowed'],
                      doc['roomCreatorId'],
                      doc['peopleNumber'],
                    ),
                  )
                  .toList(),
            ),
          );
    } catch (exception) {
      if (exception is PlatformException && exception.message != null) {
        if (exception.message!.contains('permission-denied')) {
          yield left(
            const RoomFailure.insufficientPermission(),
          );
        } else {
          yield left(
            const RoomFailure.unexpected(),
          );
        }
      } else {
        yield left(
          const RoomFailure.unexpected(),
        );
      }
    }
  }

  @override
  Future<Either<RoomFailure, Unit>> create(Room room) async {
    try {
      final roomsCollection = await firestore.roomsCollection();

      await roomsCollection.doc(room.roomId).set(
        {
          'roomCreatorId': room.roomId,
          'dateTime': DateTime.now().toIso8601String(),
          'roomName': room.roomName,
          'peopleNumber': room.peopleNumber,
          'isVideoAllowed': room.isVideoAllowed,
        },
      );
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('permission-denied')) {
          return left(const RoomFailure.insufficientPermission());
        } else {
          return left(const RoomFailure.unexpected());
        }
      } else {
        return left(const RoomFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoomFailure, Room>> getRoom(Room room) async {
    try {
      final roomsCollection = await firestore.roomsCollection();
      final docSnapshot = await roomsCollection.doc(room.roomId).get();
      final newRoom = docSnapshot.data();

      return right(
        Room.toDomain(
          newRoom!['roomCreatorId'],
          newRoom['roomName'],
          newRoom['isVideoAllowed'],
          newRoom['roomCreatorId'],
          newRoom['peopleNumber'],
        ),
      );
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('permission-denied')) {
          return left(const RoomFailure.insufficientPermission());
        } else {
          return left(const RoomFailure.unexpected());
        }
      } else {
        return left(const RoomFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<RoomFailure, Unit>> delete(Room room) async {
    try {
      final roomsCollection = await firestore.roomsCollection();

      await roomsCollection.doc(room.roomId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('permission-denied')) {
          return left(const RoomFailure.insufficientPermission());
        } else {
          return left(const RoomFailure.unexpected());
        }
      } else {
        return left(const RoomFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<RoomFailure, List<Room>>> search(String query) async* {
    final roomsCollection = await firestore.roomsCollection();
    try {
      yield* roomsCollection
          .orderBy(
            'dateTime',
            descending: true,
          )
          .snapshots()
          .map(
            (snapshot) => right(
              snapshot.docs
                  .map(
                    (doc) => Room.toDomain(
                      doc.id,
                      doc['roomName'],
                      doc['isVideoAllowed'],
                      doc['roomCreatorId'],
                      doc['peopleNumber'],
                    ),
                  )
                  .toList()
                  .where((element) => element.roomName.contains(query))
                  .toList(),
            ),
          );
    } catch (exception) {
      if (exception is PlatformException && exception.message != null) {
        if (exception.message!.contains('permission-denied')) {
          yield left(
            const RoomFailure.insufficientPermission(),
          );
        } else {
          yield left(
            const RoomFailure.unexpected(),
          );
        }
      } else {
        yield left(
          const RoomFailure.unexpected(),
        );
      }
    }
  }

  // @override
  // Stream<Room> initAgora(Room room) async* {
  //   int myUid = 0;

  //   _engine = await RtcEngine.createWithContext(RtcEngineContext(appId));
  //   await _engine?.enableVideo();
  //   await _engine?.enableAudio();

  //   await _engine?.setChannelProfile(ChannelProfile.LiveBroadcasting);
  //   await _engine?.setClientRole(ClientRole.Broadcaster);

  //   _engine?.setEventHandler(RtcEngineEventHandler(
  //     joinChannelSuccess: (channel, uid, elapsed) {
  //       print('onJoinChannel: $channel, uid: $uid');
  //       myUid = uid;
  //       _guests.add(uid);
  //     },
  //     leaveChannel: (stats) {
  //       print('onLeaveChannel');
  //       _guests.clear();
  //     },
  //     userJoined: (uid, elapsed) {
  //       print('userJoined: $uid');
  //       uid == myUid ? _guests.add(uid) : _guests.insert(0, uid);
  //     },
  //     userOffline: (uid, elapsed) {
  //       print('userOffline: $uid');
  //       _guests.remove(uid);
  //     },
  //     streamMessage: (_, __, message) {
  //       final String info = "here is the message $message";
  //       print(info);
  //     },
  //     streamMessageError: (_, __, error, ___, ____) {
  //       final String info = "here is the error $error";
  //       print(info);
  //     },
  //   ));

  //   await _engine?.joinChannel(null, room.roomId, null, 0);
  //   room = room.copyWith(myUid: myUid, guests: _guests);
  //   print('here is myUid in repo $myUid');
  //   print('here is guests in repo $_guests');
  //   yield room;
  // }
}
