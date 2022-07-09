import 'package:flutter/material.dart';

mixin MixinNavigator {
  void routePushReplaced(BuildContext context, String routeName,
      [dynamic pageArgument]) {
    Navigator.of(context).pushReplacementNamed(
      routeName,
      arguments: pageArgument,
    );
  }
}
