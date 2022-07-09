import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_player_me_flutter/widgets/platform_specific/platform_root_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformRootApp.getApp(
      title: 'Ready Player Me',
      cupertinoData: const CupertinoThemeData(
          primaryColor: Color.fromARGB(255, 20, 2, 46),
          scaffoldBackgroundColor: Colors.black87),
      materialData: ThemeData(
          primaryColor: const Color.fromARGB(255, 20, 2, 46),
          scaffoldBackgroundColor: Colors.black87),
    );
  }
}
