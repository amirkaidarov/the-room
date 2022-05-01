import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/joke/joke_bloc.dart';
import '../../joke/joke_page.dart';
import '../helpers/custom_rect_tween.dart';
import '../helpers/hero_dialog_route.dart';

class JokeButton extends StatelessWidget {
  const JokeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: _heroBroadcast,
      createRectTween: (begin, end) {
        return CustomRectTween(begin: begin as Rect, end: end as Rect);
      },
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            HeroDialogRoute(builder: (context) => const JokePage()),
          );
          context.read<JokeBloc>().add(const JokeEvent.jokeRequested());
        },
        child: const Icon(
          Icons.emoji_emotions_rounded,
          size: 50,
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}

/// Tag-value used for the add todo popup button.
const String _heroBroadcast = 'joke-hero';
