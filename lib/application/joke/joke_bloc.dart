import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/joke/i_joke_repository.dart';

part 'joke_event.dart';
part 'joke_state.dart';
part 'joke_bloc.freezed.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final IJokeRepository jokeRepository;

  JokeBloc({required this.jokeRepository}) : super(const JokeState.initial()) {
    on<JokeEvent>(
      (event, emit) async {
        await event.map(
          jokeRequested: (e) async {
            emit(const JokeState.loadInProgress());
            final joke = await jokeRepository.getDadJoke();
            emit(JokeState.loadSuccess(joke));
          },
        );
      },
    );
  }
}
