import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calling_app/presentation/survey/widgets/survey_form_widget.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/room_settings/room_settings_bloc.dart';
import '../../application/survey/survey_bloc.dart';
import '../../injection.dart';
import '../home/helpers/custom_rect_tween.dart';
import 'widgets/button_widget.dart';

const String _heroBroadcast = 'to-do-hero';

class SurveyPage extends StatelessWidget {
  const SurveyPage({
    Key? key,
  }) : super(key: key);
  static const routeName = '/survey-page';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SurveyBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final userId =
              state.maybeMap(orElse: () => '', authenticated: (s) => s.userId);
          return BlocProvider(
            create: (context) => sl<RoomSettingsBloc>()
              ..add(
                RoomSettingsEvent.roomIdInitialized(userId),
              ),
            child: Center(
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: SurveyForm(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 20.0,
                            top: 20,
                          ),
                          child: Button(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
