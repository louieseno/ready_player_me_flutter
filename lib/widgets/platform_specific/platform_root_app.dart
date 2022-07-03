import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_player_me_flutter/navigation/root_navigator.dart';
import 'package:ready_player_me_flutter/utils/constants.dart';

class PlatformRootApp {
  static getApp({
    required String title,
    required ThemeData materialData,
    required CupertinoThemeData cupertinoData,
  }) {
    if (Platform.isIOS) {
      return CupertinoApp(
        title: title,
        theme: cupertinoData,
        initialRoute: AppRoute.readyPlayerMe.value,
        onGenerateRoute: RouteNavigator.routeHandler(),
        onUnknownRoute: RouteNavigator.routeNotFound(),
      );
    } else {
      return MaterialApp(
        title: title,
        theme: materialData,
        initialRoute: AppRoute.readyPlayerMe.value,
        onGenerateRoute: RouteNavigator.routeHandler(),
        onUnknownRoute: RouteNavigator.routeNotFound(),
      );
    }
  }
}
