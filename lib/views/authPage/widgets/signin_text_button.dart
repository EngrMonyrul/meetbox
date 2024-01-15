import 'package:flutter/material.dart';

Widget signinText({required BuildContext context, required Function() onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Existing acocunt?'),
      const SizedBox(width: 5),
      GestureDetector(
        onTap: onTap,
        child: const Text(
          'Sign in',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
