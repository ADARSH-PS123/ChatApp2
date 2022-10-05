import 'package:flutter/material.dart';

void showSnackBar(
  context, {
  required String message,
  required Duration duration,
}) {
  final snakBar = SnackBar(
    content: Row(children: [
      Text(message),
    ]),
    duration: duration,
  );
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(snakBar);
}
