import 'package:flutter/material.dart';

void popScreen(context) {
  Navigator.of(context).pop();
}

void pushScreen(routeName, context) {
  Navigator.of(context).pushNamed(routeName);
}
