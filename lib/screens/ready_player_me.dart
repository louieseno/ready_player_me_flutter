import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/widgets.dart';
import 'package:ready_player_me_flutter/utils/constants.dart';
import 'package:ready_player_me_flutter/utils/mixins/mixin_navigator.dart';
import 'package:ready_player_me_flutter/widgets/platform_specific/platform_scaffold.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReadyPlayerMe extends StatefulWidget {
  const ReadyPlayerMe({Key? key}) : super(key: key);

  @override
  State<ReadyPlayerMe> createState() => _ReadyPlayerMeState();
}

class _ReadyPlayerMeState extends State<ReadyPlayerMe> with MixinNavigator {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold.getScaffold(
      body: WebView(
        initialUrl: 'https://readyplayer.me/avatar',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        navigationDelegate: (NavigationRequest request) {
          if (request.url.contains('.glb')) {
            print(request.url);
            print('GLB DOWNLOAD');
            routePushReplaced(context, AppRoute.readyPlayerMe.value);
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
        gestureNavigationEnabled: true,
      ),
    );
  }
}
