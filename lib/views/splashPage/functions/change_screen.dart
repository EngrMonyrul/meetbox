import 'package:flutter/material.dart';
import 'package:meetbox/views/authPage/auth_page_views.dart';

Future<void> changeScreen({required BuildContext context}) async {
  Future.delayed(
    const Duration(seconds: 3),
    () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthPageView(),
        ),
      );
    },
  );
}
