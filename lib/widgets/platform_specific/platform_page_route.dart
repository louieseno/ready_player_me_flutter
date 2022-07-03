import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformPageRoute {
  static Route<dynamic>? setPage(Widget page) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      );
    } else {
      return MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      );
    }
  }
}
