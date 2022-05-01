part of 'joke_bloc.dart';

@freezed
class JokeState with _$JokeState {
  const factory JokeState.initial() = _Initial;
  const factory JokeState.loadInProgress() = _LoadInProgress;
  const factory JokeState.loadSuccess(String joke) = _LoadSuccess;
}
