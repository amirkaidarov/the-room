import 'package:flutter/material.dart';
import 'package:flutter_calling_app/presentation/room_settings/room_settings_page.dart';

import '../helpers/hero_dialog_route.dart';
import '../helpers/custom_rect_tween.dart';

/// {@template add_todo_button}
/// Button to add a new [Todo].
///
/// Opens a [HeroDialogRoute] of [_AddTodoPopupCard].
///
/// Uses a [Hero] with tag [_heroBroadcast].
/// {@endtemplate}

class BroadcastButton extends StatelessWidget {
  /// {@macro add_todo_button}
  const BroadcastButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(
        bottom: size.height*0.04,
        left: 3,
      ),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          HeroDialogRoute(
            builder: (context) => const RoomSettingsPage(),
          ),
        ),
        child: Hero(
          tag: _heroBroadcast,
          createRectTween: (begin, end) {
            return CustomRectTween(begin: begin as Rect, end: end as Rect);
          },
          child: Material(
            color: Theme.of(context).primaryColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 9,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.add,
                    size: 30,
                  ),
                  SizedBox(width: 10),
                  Text('Broadcast')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Tag-value used for the add todo popup button.
const String _heroBroadcast = 'broadcast-hero';


// Material(
//             color: Theme.of(context).primaryColor,
//             elevation: 5,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
//             child: const Padding(
//               padding: EdgeInsets.all(14),
//               child: Icon(
//                 Icons.meeting_room_rounded,
//                 size: 30,
//               ),
//             ),
//           ),