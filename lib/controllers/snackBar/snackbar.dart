import 'package:flutter/material.dart';

Future<void> customSnackBar(
    {required BuildContext context,
    required String text,
    required Color color}) async {
  Future.delayed(
    Duration.zero,
    () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(text),
          ),
        ),
      );
    },
  );
}
