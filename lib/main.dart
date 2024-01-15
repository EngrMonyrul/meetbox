import 'package:flutter/material.dart';
import 'package:meetbox/views/signinPage/providers/signin_page_provider.dart';
import 'package:meetbox/views/signupPage/providers/signup_page_provider.dart';
import 'package:meetbox/views/splashPage/splash_page_view.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SigninPageProvider()),
        ChangeNotifierProvider(create: (context) => SignupPageProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPageView(),
      ),
    );
  }
}
