import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
  const HelpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.question_mark_rounded,
          size: 30,
          color: Theme.of(context).primaryColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: Theme.of(context).colorScheme.tertiary,
      ),
      onPressed: () {} ,
    );
  }
}
