import 'package:flutter/widgets.dart';
import 'package:ready_player_me_flutter/widgets/platform_specific/platform_scaffold.dart';

class ViewAvatar extends StatefulWidget {
  const ViewAvatar({Key? key}) : super(key: key);

  @override
  State<ViewAvatar> createState() => _ViewAvatarState();
}

class _ViewAvatarState extends State<ViewAvatar> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold.getScaffold(body: const Text('AVATAR VIEW'));
  }
}
