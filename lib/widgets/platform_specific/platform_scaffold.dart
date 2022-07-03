import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformScaffold {
  static getScaffold({
    required Widget body,
  }) {
    if (Platform.isIOS) {
      return SafeArea(
        child: CupertinoPageScaffold(
          child: body,
        ),
      );
    } else {
      return SafeArea(
        child: Scaffold(
          body: body,
        ),
      );
    }
  }
}
