import 'package:flutter/material.dart';

mixin MixinNavigator {
  void routePushReplaced(BuildContext context, String routeName) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }
}
