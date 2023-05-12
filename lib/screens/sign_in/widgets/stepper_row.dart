import 'package:flutter/material.dart';
import 'package:travel_application/core/colors.dart';

import '../../../core/widgets.dart';

class StepperRow extends StatelessWidget {
  const StepperRow({
    super.key,
    required this.stepCount,
    required this.stepBool,
  });
  final String stepCount;
  final bool stepBool;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: stepBool ? appBarColor : jGreenMediocShade,
          child: Text(
            stepCount,
            style: TextStyle(
              color: stepBool ? jBlack : jWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        jSeperatorSpacer,
        Text(
          'Step $stepCount',
          style: TextStyle(
            fontWeight: stepBool ? FontWeight.w500 : FontWeight.w300,
            color: jBlack,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
