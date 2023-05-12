import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/core/constants.dart';
import 'package:travel_application/core/widgets.dart';
import 'package:travel_application/screens/sign_in/controller/sign_in_controller.dart';
import 'package:travel_application/screens/sign_in/widgets/custom_formfield.dart';
import 'package:travel_application/screens/sign_in/widgets/sign_in_button.dart';
import 'package:lottie/lottie.dart';
import 'widgets/create_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String routeName = 'Sign_In_Screen';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignInController>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              jLHeightBox,
              const Text('Sign-In to unRavel'),
              jLHeightBox,
              LottieBuilder.network(
                'https://assets3.lottiefiles.com/packages/lf20_bhebjzpu.json',
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              jLHeightBox,
              CustomFormField(
                hintText: 'Email Address',
                prefixIcon: const Icon(Icons.email_outlined),
                controller: provider.emailController,
              ),
              jLHeightBox,
              CustomFormField(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.password_rounded),
                controller: provider.passwordController,
              ),
              jLHeightBox,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: jDefaultPadding + 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SignInButton(
                      email: provider.emailController.text,
                      password: provider.passwordController.text,
                    ),
                    const CreateAccountButton(),
                  ],
                ),
              ),
              jLHeightBox,
            ],
          ),
        ),
      ),
    );
  }
}
