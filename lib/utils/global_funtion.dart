import 'package:flutter/material.dart';
import 'package:test_bukit_vista/utils/styles.dart';

showSnackbar(
    {required BuildContext context,
    required String message,
    Color color = kColorPrimary}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      duration: const Duration(milliseconds: 500),
      content: Text(
        message,
      ),
    ),
  );
}
