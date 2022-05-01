import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/room_settings/room_settings_bloc.dart';

class CameraSwitch extends StatefulWidget {
  const CameraSwitch({Key? key}) : super(key: key);

  @override
  State<CameraSwitch> createState() => _CameraSwitchState();
}

class _CameraSwitchState extends State<CameraSwitch> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomSettingsBloc, RoomSettingsState>(
      builder: (context, state) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Allow camera?'),
          const SizedBox(width: 10),
          CupertinoSwitch(
            value: state.room.isVideoAllowed,
            activeColor: Theme.of(context).primaryColor,
            onChanged: (value) => context.read<RoomSettingsBloc>().add(
                  RoomSettingsEvent.roomVideoToggleChanged(value),
                ),
          ),
        ],
      ),
    );
  }
}
