import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/sign_in/sign_in_bloc.dart';
import '../../../injection.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.title,
    required this.routeName,
  }) : super(key: key);

  final String title;
  final String routeName;

  void signIn(BuildContext context) {
    context.read<SignInBloc>().add(
          const SignInEvent.signInAnonymously(),
        );
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SignInBloc>(),
      child: BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) => ElevatedButton(
          onPressed: () => signIn(context),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ),
    );
  }
}
