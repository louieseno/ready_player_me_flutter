import 'package:flutter/widgets.dart';
import 'package:ready_player_me_flutter/widgets/platform_specific/platform_scaffold.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ViewAvatarPageArguments {
  final String glbURL;
  const ViewAvatarPageArguments({
    required this.glbURL,
  });
}

class ViewAvatar extends StatefulWidget {
  final ViewAvatarPageArguments arguments;
  const ViewAvatar({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<ViewAvatar> createState() => _ViewAvatarState();
}

class _ViewAvatarState extends State<ViewAvatar> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold.getScaffold(
      body: ModelViewer(
        backgroundColor: const Color.fromARGB(255, 10, 10, 55),
        src: widget.arguments.glbURL,
        alt: "Ready Player Me Avatar",
        autoRotate: false,
        cameraControls: true,
      ),
    );
  }
}
