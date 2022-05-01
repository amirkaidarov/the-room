import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calling_app/presentation/talk_room/talk_room_page3.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../application/room_broadcast/room_broadcast_bloc.dart';
import '../../../application/room_settings/room_settings_bloc.dart';
import '../../../domain/room/room.dart';
import '../../main/main_page.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  void _broadcast(BuildContext context, Room room) async {
    room.isVideoAllowed
        ? await [Permission.camera, Permission.microphone].request()
        : await [Permission.microphone].request();
    context.read<RoomBroadcastBloc>().add(RoomBroadcastEvent.createRoom(room));
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const TalkRoomPage3(),
      ),
      ModalRoute.withName(MainPage.routeName),
    );

    // Navigator.of(context).pushAndRemoveUntil(
    //   MaterialPageRoute(
    //     builder: (context) => TalkRoomPage(
    //       channelName: room.roomId,
    //       isBroadcaster: true,
    //     ),
    //   ),
    //   ModalRoute.withName(HomePage.routeName),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomSettingsBloc, RoomSettingsState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            if (state.room.roomName.isNotEmpty) {
              context
                  .read<RoomSettingsBloc>()
                  .add(RoomSettingsEvent.sent(state.room));
              _broadcast(context, state.room);
            }
          },
          child: const Text(
            'Broadcast',
          ),
        );
      },
    );
  }
}
