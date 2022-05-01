import 'package:flutter/material.dart';
import 'package:flutter_calling_app/presentation/core/theme.dart';
import 'package:flutter_calling_app/presentation/home/home_page.dart';
import 'package:flutter_calling_app/presentation/main/main_page.dart';
import 'package:flutter_calling_app/presentation/survey/survey_page.dart';
import 'package:flutter_calling_app/presentation/welcome/welcome_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/contact_watcher/contact_watcher_bloc.dart';
import '../../application/joke/joke_bloc.dart';
import '../../application/room_broadcast/room_broadcast_bloc.dart';
import '../../application/room_watcher/room_watcher_bloc.dart';
import '../../injection.dart';
import '../joke/joke_page.dart';
import '../splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>()
            ..add(
              const AuthEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<RoomWatcherBloc>()
            ..add(
              const RoomWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<ContactWatcherBloc>()
            ..add(
              const ContactWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => sl<JokeBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<RoomBroadcastBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Calling',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(context),
        home: const WelcomePage(),
        routes: {
          SplashPage.routeName: (ctx) => const SplashPage(),
          WelcomePage.routeName: (ctx) => const WelcomePage(),
          HomePage.routeName: (ctx) => const HomePage(),
          SurveyPage.routeName: (ctx) => const SurveyPage(),
          MainPage.routeName: (ctx) => const MainPage(),
          JokePage.routeName: (ctx) => const JokePage(),
        },
      ),
    );
  }
}
