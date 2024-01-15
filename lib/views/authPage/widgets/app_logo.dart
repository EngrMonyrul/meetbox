import 'package:flutter/material.dart';

Center appLogo({required String text}) {
  return Center(
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
