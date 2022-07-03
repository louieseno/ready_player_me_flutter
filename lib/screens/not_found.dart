import 'package:flutter/widgets.dart';
import 'package:ready_player_me_flutter/widgets/platform_specific/platform_scaffold.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold.getScaffold(
      body: const Center(child: Text('Page Not Found!')),
    );
  }
}
