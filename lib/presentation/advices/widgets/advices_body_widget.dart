import 'package:flutter/material.dart';

class AdvicesBody extends StatelessWidget {
  const AdvicesBody({Key? key}) : super(key: key);

  static const advices = {
    0: [
      'Get plenty of sleep',
      Icons.bed_rounded ,
    ],
    1: [
      'Eat healthy',
      Icons.coffee_rounded,
    ],
    2: [
      'Exercise',
      Icons.fitness_center_rounded ,
    ],
    3: [
      'Find a connection \nwith others',
      Icons.people_alt_rounded,
    ],
    4: [
      'Practice relaxation \n techniques',
      Icons.water_rounded,
    ],
    5: [
      'Practice gratitude and \nstay positive',
      Icons.emoji_events_rounded,
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: advices.length,
          itemBuilder: (ctx, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(advices[index]![1] as IconData, size: 30),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  advices[index]![0] as String,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
