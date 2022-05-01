import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io' show Platform;

import '../../application/auth/auth_bloc.dart';
import '../welcome/welcome_page.dart';
import 'widget/broadcast_button_widget.dart';
import 'widget/home_body_widget.dart';
import 'widget/joke_button_widget.dart';
import 'widget/top_bar_widget.dart';
import 'widget/top_message_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) =>
              Navigator.of(context).pushReplacementNamed(WelcomePage.routeName),
          orElse: () {},
        );
      },
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const TopBar(),
          toolbarHeight: size.height * 0.1,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: const [
                TopMessage(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.0,
                      top: 15,
                    ),
                    child: Text(
                      'Open rooms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(child: HomeBody()),
              ],
            ),
            const BroadcastButton(),
            Positioned(
                right: 10,
                bottom: size.height * 0.04,
                child: const JokeButton()),
          ],
        ),
      ),
    );
  }
}
