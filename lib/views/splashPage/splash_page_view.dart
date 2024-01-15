import 'package:flutter/material.dart';
import 'package:meetbox/views/splashPage/functions/change_screen.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({super.key});

  @override
  State<SplashPageView> createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  @override
  void initState() {
    changeScreen(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Image.asset('assets/images/img_logo_meetbox.png'),
        ),
      ),
    );
  }
}
