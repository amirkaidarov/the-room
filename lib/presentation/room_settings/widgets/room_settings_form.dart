import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/room_settings/room_settings_bloc.dart';

class RoomSettingsForm extends StatelessWidget {
  const RoomSettingsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomSettingsBloc, RoomSettingsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration:  const InputDecoration(
                prefixIcon: Icon(Icons.supervised_user_circle_rounded),
                labelText: 'Room name',
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              ),
              autocorrect: false,
              onChanged: (value) => context
                  .read<RoomSettingsBloc>()
                  .add(RoomSettingsEvent.roomNameChanged(value)),
              validator: (_) => (state.room.roomName.isEmpty)
                  ? 'Please, provide a room name'
                  : null,
            ),
          ),
        );
      },
    );
  }
}
