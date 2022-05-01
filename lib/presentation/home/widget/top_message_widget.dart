import 'package:flutter/material.dart';
import 'package:flutter_calling_app/presentation/survey/survey_page.dart';

import '../../core/constants.dart';
import '../helpers/custom_rect_tween.dart';
import '../helpers/hero_dialog_route.dart';

class TopMessage extends StatelessWidget {
  const TopMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          width: size.width * 0.92,
          decoration: BoxDecoration(
            color: Style.AccentOliveGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'You are awesome!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'We care about you. Let us know how you feel today.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(HeroDialogRoute(
              builder: (context) => const SurveyPage(),
            ));
          },
          child: Hero(
            tag: _heroBroadcast,
            createRectTween: (begin, end) {
              return CustomRectTween(begin: begin as Rect, end: end as Rect);
            },
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ),
        ),
      ],
    );
  }
}

/// Tag-value used for the add todo popup button.
const String _heroBroadcast = 'survey-hero';
