import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calling_app/presentation/home/widget/room_card.dart';

import '../../../application/room_watcher/room_watcher_bloc.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
      ),
      child: BlocBuilder<RoomWatcherBloc, RoomWatcherState>(
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) => state.rooms.isNotEmpty
                ? ListView.builder(
                    itemBuilder: (context, index) =>
                        RoomCard(room: state.rooms[index]),
                    itemCount: state.rooms.length,
                    physics: const BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                  )
                : const Align(
                    alignment: Alignment.topCenter,
                    child: Text('Sowwy, no rooms 😔'),
                  ),
          loadFailure: (_) => Container(),
        ),
      ),
    );
  }
}
