import 'package:flutter/material.dart';
import 'package:meetbox/views/authPage/widgets/app_feature_slogan.dart';
import 'package:meetbox/views/authPage/widgets/app_logo.dart';
import 'package:meetbox/views/authPage/widgets/custom_divider.dart';
import 'package:meetbox/views/authPage/widgets/feature_slogan.dart';
import 'package:meetbox/views/authPage/widgets/login_methods_area.dart';
import 'package:meetbox/views/authPage/widgets/signin_text_button.dart';
import 'package:meetbox/views/authPage/widgets/signup_button.dart';
import 'package:meetbox/views/authPage/widgets/slogan_above.dart';
import 'package:meetbox/views/authPage/widgets/welcome_msg.dart';
import 'package:meetbox/views/signinPage/signin_page_view.dart';
import 'package:meetbox/views/signupPage/signup_page_view.dart';

class AuthPageView extends StatefulWidget {
  const AuthPageView({super.key});

  @override
  State<AuthPageView> createState() => _AuthPageViewState();
}

class _AuthPageViewState extends State<AuthPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .08),
            appLogo(text: 'MeetBox'),
            SizedBox(height: MediaQuery.of(context).size.height * .12),
            welcomeMsg(),
            sloganAbove(),
            appFeatureSlogan(),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            sloganBelow(
                text:
                    'Our chat app is the perfect way to chat with random peoples & fun with them unlimited'),
            const Spacer(),
            loginMethods(),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            customDivider(),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            signupButton(
              context: context,
              title: 'Sign up with email',
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPageView(),
                  ),
                );
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            signinText(
              context: context,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninPageView(),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
