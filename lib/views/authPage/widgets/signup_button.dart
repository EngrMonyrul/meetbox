import 'package:flutter/material.dart';

Widget signupButton(
    {required BuildContext context,
    required String title,
    required Function() ontap}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    ),
  );
}
