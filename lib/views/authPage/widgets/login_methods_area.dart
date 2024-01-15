import 'package:flutter/material.dart';

Row loginMethods() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
          child: Image.asset('assets/icons/ic_facebook.png'),
        ),
      ),
      GestureDetector(
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
          child: Image.asset('assets/icons/ic_google.png'),
        ),
      ),
    ],
  );
}
