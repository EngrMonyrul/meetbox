import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetbox/controllers/snackBar/snackbar.dart';
import 'package:meetbox/views/authPage/widgets/app_logo.dart';
import 'package:meetbox/views/authPage/widgets/custom_divider.dart';
import 'package:meetbox/views/authPage/widgets/feature_slogan.dart';
import 'package:meetbox/views/authPage/widgets/login_methods_area.dart';
import 'package:meetbox/views/authPage/widgets/signup_button.dart';
import 'package:meetbox/views/signinPage/providers/signin_page_provider.dart';
import 'package:provider/provider.dart';

class SigninPageView extends StatefulWidget {
  const SigninPageView({super.key});

  @override
  State<SigninPageView> createState() => _SigninPageViewState();
}

class _SigninPageViewState extends State<SigninPageView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final signinPageProvider = Provider.of<SigninPageProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .2),
              appLogo(text: 'Sign in to MeetBox'),
              sloganBelow(
                  text:
                      'Welcome back! Sign in using your social account or email to continue with us'),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              loginMethods(),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              customDivider(),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Your email',
                  hintText: 'abcd@gmail.com',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              TextField(
                controller: _passwordController,
                obscureText: signinPageProvider.hidePassword,
                decoration: InputDecoration(
                  labelText: 'Your password',
                  hintText: '1234567890',
                  suffixIcon: IconButton(
                    icon: signinPageProvider.hidePassword
                        ? const Icon(CupertinoIcons.eye)
                        : const Icon(CupertinoIcons.eye_slash),
                    onPressed: () {
                      signinPageProvider.setHidePassword();
                    },
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .25),
              signupButton(
                context: context,
                title: 'Sign in',
                ontap: () {
                  if (_emailController.text.isEmpty ||
                      _passwordController.text.isEmpty) {
                    customSnackBar(
                        context: context,
                        text: 'Empty fields',
                        color: Colors.red);
                  } else {
                    if (!_emailController.text.contains('@gmail.com')) {
                      customSnackBar(
                        context: context,
                        text: 'Invalid email',
                        color: Colors.red,
                      );
                    }
                  }
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              GestureDetector(
                child: const Text(
                  'Forget password?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
            ],
          ),
        ),
      ),
    );
  }
}
