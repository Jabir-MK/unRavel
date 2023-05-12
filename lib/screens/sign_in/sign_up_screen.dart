import 'package:flutter/material.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/sign_in/widgets/custom_signup_field.dart';
import 'package:travel_application/screens/sign_in/widgets/signup_button.dart';
import 'package:travel_application/screens/sign_in/widgets/stepper_row.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static String routeName = 'Sign_Up_Screen';
  final bool currentStep = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: jDefaultPadding + 5,
            vertical: jDefaultPadding,
          ),
          child: Column(
            children: [
              jLHeightBox,
              const Text(
                'Create An unRavel',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
              jSeperatorBox,
              const Text(
                'Account',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
              jMHeightBox,
              StepperRow(stepCount: '1', stepBool: currentStep),
              jSHeightBox,
              StepperRow(stepCount: '2', stepBool: currentStep),
              jSHeightBox,
              StepperRow(stepCount: '3', stepBool: currentStep),
              jMHeightBox,
              const FormFieldSignUp(hintText: 'First Name', obscureText: false),
              jMHeightBox,
              const FormFieldSignUp(obscureText: false, hintText: 'E-Mail'),
              jMHeightBox,
              const FormFieldSignUp(obscureText: true, hintText: 'Password'),
              jLHeightBox,
              const SignUpButton()
            ],
          ),
        ),
      ),
    );
  }
}
