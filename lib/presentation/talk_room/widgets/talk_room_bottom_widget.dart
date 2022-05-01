import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calling_app/application/auth/auth_bloc.dart';

import '../../../application/room_broadcast/room_broadcast_bloc.dart';

class TalkRoomBottom extends StatelessWidget {
  const TalkRoomBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBroadcastBloc, RoomBroadcastState>(
      buildWhen: (p, c) =>
          p.maybeMap(
              orElse: () => true, roomEntered: (s) => s.room.peopleNumber) !=
          c.maybeMap(
              orElse: () => false, roomEntered: (s) => s.room.peopleNumber),
      builder: (context, state) {
        return state.maybeMap(
            orElse: () => Container(),
            roomEntered: (s) {
              return Container(
                color: Theme.of(context).colorScheme.tertiary,
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 25,
                      ),
                    ),
                    elevation: MaterialStateProperty.all<double>(0.5),
                  ),
                  onPressed: () {
                    final uid = context.read<AuthBloc>().state.maybeMap(
                          orElse: () => '',
                          authenticated: (s) => s.userId,
                        );
                    context.read<RoomBroadcastBloc>().add(
                          RoomBroadcastEvent.closeRoom(
                            s.room,
                            uid,
                          ),
                        );
                  },
                  child: Text(
                    'Leave the room',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}
