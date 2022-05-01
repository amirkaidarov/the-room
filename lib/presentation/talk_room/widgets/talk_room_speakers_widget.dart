import 'dart:math';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/room_broadcast/room_broadcast_bloc.dart';
import '../../../domain/room/room.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

const appId = '8f1b43e3e3aa4f95910a6fbf5a001148';

const avatars = {
  0: 'assets/avatars/bun.png',
  1: 'assets/avatars/cat.png',
  2: 'assets/avatars/pig.png',
  3: 'assets/avatars/ribbit.png',
};

class TalkRoomSpeakers extends StatefulWidget {
  const TalkRoomSpeakers({
    Key? key,
    required this.room,
  }) : super(key: key);
  final Room room;

  @override
  State<TalkRoomSpeakers> createState() => _TalkRoomSpeakersState();
}

class _TalkRoomSpeakersState extends State<TalkRoomSpeakers> {
  RtcEngine? _engine;
  final List<int> _guests = [];
  int myUid = 0;

  @override
  void initState() {
    _initializeAgora();
    super.initState();
  }

  @override
  void dispose() {
    _engine?.leaveChannel();
    _engine?.destroy();
    _guests.clear();
    super.dispose();
  }

  Future<void> _initializeAgora() async {
    _engine = await RtcEngine.createWithContext(RtcEngineContext(appId));
    await _engine?.enableVideo();
    await _engine?.enableAudio();

    await _engine?.setChannelProfile(ChannelProfile.LiveBroadcasting);
    await _engine?.setClientRole(ClientRole.Broadcaster);

    _engine?.setEventHandler(RtcEngineEventHandler(
      joinChannelSuccess: (channel, uid, elapsed) {
        setState(() {
          print('onJoinChannel: $channel, uid: $uid');
          myUid = uid;
          _guests.add(uid);
        });
      },
      leaveChannel: (stats) {
        setState(() {
          print('onLeaveChannel');
          _guests.clear();
        });
      },
      userJoined: (uid, elapsed) {
        setState(() {
          print('userJoined: $uid');
          uid == myUid ? _guests.add(uid) : _guests.insert(0, uid);
          if (uid != myUid) {
            context
                .read<RoomBroadcastBloc>()
                .add(RoomBroadcastEvent.updateRoom(widget.room));
          }
        });
      },
      userOffline: (uid, elapsed) {
        setState(() {
          print('userOffline: $uid');
          context
              .read<RoomBroadcastBloc>()
              .add(RoomBroadcastEvent.updateRoom(widget.room));
          _guests.remove(uid);
        });
      },
      streamMessage: (_, __, message) {
        final String info = "here is the message $message";
        print(info);
      },
      streamMessageError: (_, __, error, ___, ____) {
        final String info = "here is the error $error";
        print(info);
      },
    ));

    await _engine?.joinChannel(null, widget.room.roomId, null, 0);
  }

  Widget renderViews(uid) {
    return renderFrame(
      ClipRRect(
        borderRadius: BorderRadius.circular(70),
        child: uid == myUid
            ? const RtcLocalView.SurfaceView()
            : RtcRemoteView.SurfaceView(
                uid: uid,
                channelId: widget.room.roomId,
              ),
      ),
      100,
    );
  }

  Widget renderFrame(Widget inside, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 8,
              spreadRadius: 3)
        ],
        border: Border.all(
          width: 1.5,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(70.0),
      ),
      padding: const EdgeInsets.all(5),
      child: inside,
    );
  }

  Widget renderAvatars(int id) {
    var rng = Random();
    final avatarIndex = rng.nextInt(4);
    final avatar = avatars[avatarIndex] as String;
    // String avatar = '';
    // if (id == myUid){
    //   avatar = avatars[0] as String;
    // } else {
    //   avatar = avatars[1] as String;
    // }
    return renderFrame(
      CircleAvatar(
        backgroundColor: Colors.white,
        foregroundImage: AssetImage(avatar),
        radius: 50.0,
      ),
      70.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RoomBroadcastBloc, RoomBroadcastState>(
      listener: (context, state) {
        state.maybeMap(
            orElse: () {},
            roomClosed: (s) {
              _engine?.leaveChannel();
            },
            roomEntered: (s) {});
      },
      builder: (context, state) => state.maybeMap(
        orElse: () => Container(),
        roomEntered: (s) => GridView.builder(
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(10.0),
            child: s.room.isVideoAllowed
                ? renderViews(_guests[index])
                : renderAvatars(_guests[index]),
          ),
          itemCount: _guests.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: s.room.isVideoAllowed ? 2 : 3,
          ),
        ),
      ),
    );
  }
}
