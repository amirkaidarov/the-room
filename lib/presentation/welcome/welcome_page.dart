import 'package:flutter/material.dart';
import 'package:flutter_calling_app/presentation/welcome/widgets/welcome_message_widget.dart';

import '../main/main_page.dart';
import 'widgets/button_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  static const routeName = '/welcome-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 50,
          right: 50,
          bottom: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Spacer(flex: 4),
            Text(
              '🥳 Welcome!',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 11,
              child: WelcomeMessage(),
            ),
            Spacer(flex: 1),
            Align(
              alignment: Alignment.topRight,
              child: Button(
                title: 'Proceed',
                routeName: MainPage.routeName,
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
