import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/room_watcher/room_watcher_bloc.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  final controller = TextEditingController();
  bool _isFolded = true;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<RoomWatcherBloc, RoomWatcherState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              width: _isFolded ? size.height * 0.07 : size.width * .91,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: kElevationToShadow[3],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(
                          left: size.width * 0.04,
                        ),
                        child: !_isFolded
                            ? TextField(
                                controller: controller,
                                decoration: const InputDecoration(
                                  hintText: 'Room name',
                                  border: InputBorder.none,
                                ),
                                onChanged: (value) => context
                                    .read<RoomWatcherBloc>()
                                    .add(RoomWatcherEvent.roomSearched(value)),
                              )
                            : null),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    child: Material(
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              _isFolded ? size.width * 0.07 : 0),
                          topRight: Radius.circular(size.width * 0.07),
                          bottomLeft: Radius.circular(
                              _isFolded ? size.width * 0.07 : 0),
                          bottomRight: Radius.circular(size.width * 0.07),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(size.height * 0.0187),
                          child: Icon(
                              _isFolded ? Icons.search_rounded : Icons.close),
                        ),
                        onTap: () => setState(() {
                          !_isFolded
                              ? context.read<RoomWatcherBloc>().add(
                                    const RoomWatcherEvent.roomSearched(''),
                                  )
                              : null;
                          controller.text  = '';
                          _isFolded = !_isFolded;
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
