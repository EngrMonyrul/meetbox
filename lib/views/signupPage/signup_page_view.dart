import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meetbox/controllers/snackBar/snackbar.dart';
import 'package:meetbox/views/authPage/widgets/app_logo.dart';
import 'package:meetbox/views/authPage/widgets/custom_divider.dart';
import 'package:meetbox/views/authPage/widgets/feature_slogan.dart';
import 'package:meetbox/views/authPage/widgets/login_methods_area.dart';
import 'package:meetbox/views/authPage/widgets/signup_button.dart';
import 'package:meetbox/views/signinPage/providers/signin_page_provider.dart';
import 'package:meetbox/views/signupPage/providers/signup_page_provider.dart';
import 'package:provider/provider.dart';

class SignupPageView extends StatefulWidget {
  const SignupPageView({super.key});

  @override
  State<SignupPageView> createState() => _SignupPageViewState();
}

class _SignupPageViewState extends State<SignupPageView> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final signupPageProvider = Provider.of<SignupPageProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .2),
              appLogo(text: 'Sign up with email'),
              sloganBelow(
                  text:
                      'Get chatting with friends and random peoples today by signing up for our chat app!'),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              loginMethods(),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              customDivider(),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Your name',
                  hintText: 'abcd123',
                ),
              ),
              TextField(
                controller: _numberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: 'Your number',
                  hintText: '112379879',
                ),
              ),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Your email',
                  hintText: 'abcd@gmail.com',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
              TextField(
                controller: _passwordController,
                obscureText: signupPageProvider.hidePassword,
                decoration: InputDecoration(
                  labelText: 'Your password',
                  hintText: '1234567890',
                  suffixIcon: IconButton(
                    icon: signupPageProvider.hidePassword
                        ? const Icon(CupertinoIcons.eye)
                        : const Icon(CupertinoIcons.eye_slash),
                    onPressed: () {
                      signupPageProvider.setHidePassword();
                    },
                  ),
                ),
              ),
              TextField(
                controller: _confirmPasswordController,
                obscureText: signupPageProvider.hideConfirmPassword,
                decoration: InputDecoration(
                  labelText: 'Confirm password',
                  hintText: '1234567890',
                  suffixIcon: IconButton(
                    icon: signupPageProvider.hideConfirmPassword
                        ? const Icon(CupertinoIcons.eye)
                        : const Icon(CupertinoIcons.eye_slash),
                    onPressed: () {
                      signupPageProvider.setHideConfirmPassword();
                    },
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .05),
              signupButton(
                context: context,
                title: 'Sign in',
                ontap: signupTapped,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .01),
            ],
          ),
        ),
      ),
    );
  }

  signupTapped() {
    if (_emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _nameController.text.isEmpty ||
        _numberController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      customSnackBar(context: context, text: 'Empty fields', color: Colors.red);
    } else {
      if (!_emailController.text.contains('@gmail.com')) {
        customSnackBar(
          context: context,
          text: 'Invalid email',
          color: Colors.red,
        );
      }
    }
  }
}
