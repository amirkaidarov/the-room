import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/survey/survey_bloc.dart';

class SurveyForm extends StatefulWidget {
  const SurveyForm({Key? key}) : super(key: key);

  @override
  State<SurveyForm> createState() => _SurveyFormState();
}

class _SurveyFormState extends State<SurveyForm> {
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<SurveyBloc, SurveyState>(
      builder: (context, state) {
        double _currentSliderValue = state.moodValue;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '😢',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '😔',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '😐',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '😏',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  '😄',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 4,
              onChanged: (double value) => context.read<SurveyBloc>().add(
                    SurveyEvent.answerChanged(value),
                  ),
            ),
          ],
        );
      },
    );
  }
}
