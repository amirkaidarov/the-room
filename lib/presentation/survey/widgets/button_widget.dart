//credits to Hasnen tai
//https://gist.github.com/hasnentai/2c1c8d0f23c9009d3c2ce44c83f8855c

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/survey/survey_bloc.dart';
import '../../core/constants.dart';

const Color darkBlue =  Color.fromARGB(255, 18, 32, 47);

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with TickerProviderStateMixin {
  AnimationController? _animationController;

  double _containerPaddingLeft = 20.0;
  double? _animationValue;
  double _translateX = 0;
  double _translateY = 0;
  double _rotate = 0;
  double _scale = 1;

  bool show = false;
  bool sent = false;
  Color _color = Style.LightGrey;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1300));
    show = true;
    _animationController!.addListener(() {
      setState(() {
        show = false;
        _animationValue = _animationController!.value;
        if (_animationValue! >= 0.2 && _animationValue! < 0.4) {
          _containerPaddingLeft = 100.0;
          _color = Style.AccentOliveGreen;
        } else if (_animationValue! >= 0.4 && _animationValue! <= 0.5) {
          _translateX = 80.0;
          _rotate = -20.0;
          _scale = 0.1;
        } else if (_animationValue! >= 0.5 && _animationValue! <= 0.8) {
          _translateY = -20.0;
        } else if (_animationValue! >= 0.81) {
          _containerPaddingLeft = 20.0;
          sent = true;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<SurveyBloc, SurveyState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              context
                  .read<SurveyBloc>()
                  .add(SurveyEvent.answerSent(state.moodValue));
              _animationController!.forward();
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: _color,
                    blurRadius: 21, // soften the shadow
                    spreadRadius: -15, //end the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      20.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.only(
                  left: _containerPaddingLeft,
                  right: 20.0,
                  top: 10.0,
                  bottom: 10.0),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  (!sent)
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          child: Icon(Icons.send,
                              color: Theme.of(context).primaryColor),
                          curve: Curves.fastOutSlowIn,
                          transform: Matrix4.translationValues(
                              _translateX, _translateY, 0)
                            ..rotateZ(_rotate)
                            ..scale(_scale),
                        )
                      : Container(),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 600),
                    child: show ? const SizedBox(width: 10.0) : Container(),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    child: show ? const Text("Send") : Container(),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    child: sent ? const Icon(Icons.done) : Container(),
                  ),
                  AnimatedSize(
                    alignment: Alignment.topLeft,
                    duration: const Duration(milliseconds: 600),
                    child: sent ? const SizedBox(width: 10.0) : Container(),
                  ),
                  AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    child: sent
                        ? Text(
                            "You are the best",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
