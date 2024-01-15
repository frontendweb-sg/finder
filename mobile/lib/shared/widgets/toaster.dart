import 'package:flutter/material.dart';

void toaster(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 5),
      content: Text(message),
    ),
  );
}
