part of 'survey_bloc.dart';

@freezed
class SurveyEvent with _$SurveyEvent {
  const factory SurveyEvent.started() = _Started;
  const factory SurveyEvent.answerChanged(double moodValue) = _AnswerChanged;
  const factory SurveyEvent.answerSent(double moodValue) = _AnswerSent;
}