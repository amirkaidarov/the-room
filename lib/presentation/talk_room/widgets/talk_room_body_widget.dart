import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calling_app/presentation/talk_room/widgets/talk_room_bottom_widget.dart';

import '../../../application/room_broadcast/room_broadcast_bloc.dart';
import 'talk_room_speakers_widget.dart';

class TalkRoomBody extends StatelessWidget {
  const TalkRoomBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBroadcastBloc, RoomBroadcastState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          roomEntered: (s) => Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.only(
                    bottom: 80,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        s.room.roomName,
                        textAlign: TextAlign.start,
                        softWrap: true,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TalkRoomSpeakers(
                        room: s.room,
                      ),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: TalkRoomBottom(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
