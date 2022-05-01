import 'package:bloc/bloc.dart';
import 'package:flutter_calling_app/domain/auth/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userOption = await authRepository.getSignedInUser();
          final userId = userOption.fold(() => null, (appUser) => appUser.id.getOrCrash());
          emit(
            userOption.fold(
              () => const AuthState.unauthenticated(),
              (a) => AuthState.authenticated(userId!),
            ),
          );
        },
        signedOut: (e) async {
          await authRepository.signOut();
          emit(
            const AuthState.unauthenticated(),
          );
        },
      );
    });
  }
}
