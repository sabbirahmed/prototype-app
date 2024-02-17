import 'package:flutter/material.dart';

bool isKeyboardActive(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  return mediaQuery.viewInsets.bottom > 0;
}
