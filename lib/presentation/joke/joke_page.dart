import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/joke/joke_bloc.dart';
import '../home/helpers/custom_rect_tween.dart';

const String _heroBroadcast = 'to-do-hero';

class JokePage extends StatelessWidget {
  const JokePage({
    Key? key,
  }) : super(key: key);
  static const routeName = '/joke-page';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeBloc, JokeState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => Container(),
          loadInProgress: (s) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (s) => Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Hero(
                tag: _heroBroadcast,
                createRectTween: (begin, end) =>
                    CustomRectTween(begin: begin as Rect, end: end as Rect),
                child: Material(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Your daily dose of Dad Jokes:',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).primaryColor),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(s.joke),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
