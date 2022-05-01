import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/survey/i_survey_repository.dart';

part 'survey_event.dart';
part 'survey_state.dart';
part 'survey_bloc.freezed.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  ISurveyRepository surveyRepository;

  SurveyBloc({required this.surveyRepository}) : super(SurveyState.initial()) {
    on<SurveyEvent>((event, emit) {
      event.map(
        started: (e) => emit(SurveyState.initial()),
        answerChanged: (e) => emit(
          state.copyWith(
            moodValue: e.moodValue,
          ),
        ),
        answerSent: (e) {
          surveyRepository.update(e.moodValue);
          emit(
            state.copyWith(isSubmitting: true),
          );
        },
      );
    });
  }
}
