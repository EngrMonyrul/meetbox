import 'package:flutter/material.dart';

Row customDivider() {
  return const Row(
    children: [
      Expanded(
        child: Divider(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          'Or',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      Expanded(
        child: Divider(),
      ),
    ],
  );
}
