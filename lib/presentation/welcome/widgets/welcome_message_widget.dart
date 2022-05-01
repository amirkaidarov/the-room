import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    Key? key,
  }) : super(key: key);

  static const paragraph1 = 'Hi everyone! Please feel free to use this venue to openly talk about your thoughts and feelings completely anonymously!';
  static const paragraph2 = 'The app is in the development stage, so you can expect a lot of new features coming soon! We wish you pleasant and healthy talks with our users.';

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            paragraph1,
            style: TextStyle(
              height: 1.8,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            paragraph2,
            style: TextStyle(
              height: 1.8,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            '🫀 Amir & Katie',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
