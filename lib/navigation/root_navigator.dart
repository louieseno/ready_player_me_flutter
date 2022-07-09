import 'package:flutter/material.dart';
import 'package:ready_player_me_flutter/utils/constants.dart';
import 'package:ready_player_me_flutter/widgets/platform_specific/platform_page_route.dart';

import 'package:ready_player_me_flutter/screens/ready_player_me.dart';
import 'package:ready_player_me_flutter/screens/view_avatar.dart';
import 'package:ready_player_me_flutter/screens/not_found.dart';

class RouteNavigator {
  static routeHandler() {
    return (RouteSettings routeSettings) {
      if (routeSettings.arguments != null) {
        return {
          AppRoute.viewAvatar.value: PlatformPageRoute.setPage(
            ViewAvatar(
              arguments: routeSettings.arguments as ViewAvatarPageArguments,
            ),
          ),
        }[routeSettings.name];
      }
      return {
        AppRoute.readyPlayerMe.value:
            PlatformPageRoute.setPage(const ReadyPlayerMe()),
      }[routeSettings.name];
    };
  }

  static routeNotFound() {
    return (RouteSettings routeSettings) {
      return PlatformPageRoute.setPage(const NotFoundView());
    };
  }
}
