import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/room_broadcast/room_broadcast_bloc.dart';
import 'widgets/talk_room_body_widget.dart';

class TalkRoomPage3 extends StatelessWidget {
  const TalkRoomPage3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<RoomBroadcastBloc, RoomBroadcastState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            roomClosed: (s) {
              Navigator.pop(context);
            });
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height * 0.1,
          automaticallyImplyLeading: false,
        ),
        body: const TalkRoomBody(),
      ),
    );
  }
}
