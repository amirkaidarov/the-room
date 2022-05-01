import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../application/room_broadcast/room_broadcast_bloc.dart';
import '../../../domain/room/room.dart';
import '../../talk_room/talk_room_page3.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({Key? key, required this.room}) : super(key: key);
  final Room room;

  void _joinChannel(BuildContext context) async {
    await [Permission.camera, Permission.microphone].request();
    context.read<RoomBroadcastBloc>().add(RoomBroadcastEvent.joinRoom(room));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const TalkRoomPage3(),
      ),
    );

    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => TalkRoomPage(
    //       channelName: room.roomId,
    //       isBroadcaster: true,
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _joinChannel(context),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(0, 1),
              )
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              room.roomName,
              softWrap: true,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  IconData(
                    room.isVideoAllowed ? 0xe6a8 : 0xe6a9,
                    fontFamily: 'MaterialIcons',
                  ),
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Icon(
                  Icons.people_alt_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  room.peopleNumber.toString(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
