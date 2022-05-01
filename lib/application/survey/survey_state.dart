part of 'survey_bloc.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState({
    required double moodValue,
    required bool isSubmitting,
  }) = _SurveyState;

  factory SurveyState.initial() => SurveyState(
        moodValue: 50,
        isSubmitting: false,
      );
}
