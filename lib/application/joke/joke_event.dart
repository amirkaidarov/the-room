part of 'joke_bloc.dart';

@freezed
class JokeEvent with _$JokeEvent {
  const factory JokeEvent.jokeRequested() = _JokeRequested;
}