import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_calling_app/application/contact_watcher/contact_watcher_bloc.dart';
import 'package:flutter_calling_app/domain/auth/i_auth_repository.dart';
import 'package:flutter_calling_app/infrastructure/auth/auth_repository.dart';
import 'package:get_it/get_it.dart';

import 'application/auth/auth_bloc.dart';
import 'application/joke/joke_bloc.dart';
import 'application/room_broadcast/room_broadcast_bloc.dart';
import 'application/room_settings/room_settings_bloc.dart';
import 'application/room_watcher/room_watcher_bloc.dart';
import 'application/sign_in/sign_in_bloc.dart';
import 'application/survey/survey_bloc.dart';
import 'domain/contact/i_contact_repository.dart';
import 'domain/joke/i_joke_repository.dart';
import 'domain/room/i_room_repository.dart';
import 'domain/survey/i_survey_repository.dart';
import 'infrastructure/contact/contact_repository.dart';
import 'infrastructure/joke/joke_repository.dart';
import 'infrastructure/rooms/room_repository.dart';
import 'infrastructure/survey/survey_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // FEATURES - AUTH
  //Application
  sl.registerFactory<SignInBloc>(
    () => SignInBloc(
      authRepository: sl(),
    ),
  );

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      authRepository: sl(),
    ),
  );

  //Inforstructure
  sl.registerLazySingleton<IAuthRepository>(
    () => AuthRepository(
      firebaseAuth: sl(),
    ),
  );

  //FEATURES - Jokes
  //Application
  sl.registerFactory<JokeBloc>(
    () => JokeBloc(
      jokeRepository: sl(),
    ),
  );

  //Inforstructure
  sl.registerLazySingleton<IJokeRepository>(
    () => JokeRepository(
    ),
  );

  //FEATURES - Contacts
  //Application
  sl.registerFactory<ContactWatcherBloc>(
    () => ContactWatcherBloc(
      contactRepository: sl(),
    ),
  );

  //Inforstructure
  sl.registerLazySingleton<IContactRepository>(
    () => ContactRepository(
      firestore: sl(),
    ),
  );

  //FEATURES - SURVEY
  //Application
  sl.registerFactory<SurveyBloc>(
    () => SurveyBloc(
      surveyRepository: sl(),
    ),
  );

  //Inforstructure
  sl.registerLazySingleton<ISurveyRepository>(
    () => SurveyRepository(
      firestore: sl(),
    ),
  );

  //FEATURES - ROOMS
  //Application
  sl.registerFactory<RoomWatcherBloc>(
    () => RoomWatcherBloc(
      roomRepository: sl(),
    ),
  );

  sl.registerFactory<RoomBroadcastBloc>(
    () => RoomBroadcastBloc(
      roomRepository: sl(),
    ),
  );

  sl.registerFactory<RoomSettingsBloc>(
    () => RoomSettingsBloc(),
  );

  //Inforstructure
  sl.registerLazySingleton<IRoomRepository>(
    () => RoomRepository(
      firestore: sl(),
    ),
  );

  //External
  sl.registerLazySingleton<FirebaseAuth>(
    () => FirebaseAuth.instance,
  );

  sl.registerLazySingleton<FirebaseFirestore>(
    () => FirebaseFirestore.instance,
  );
}
