import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformRootApp {
  static getApp(
      {required String title,
      required ThemeData materialData,
      required CupertinoThemeData cupertinoData,
      required Widget home}) {
    if (Platform.isIOS) {
      return CupertinoApp(
        title: title,
        home: home,
        theme: cupertinoData,
      );
    } else {
      return MaterialApp(
        title: title,
        home: home,
        theme: materialData,
      );
    }
  }
}
