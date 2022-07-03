enum AppRoute { readyPlayerMe, viewAvatar, notFound }

extension AppRouteExtension on AppRoute {
  String get value {
    switch (this) {
      case AppRoute.readyPlayerMe:
        return 'ReadyPlayerMe';
      case AppRoute.viewAvatar:
        return 'ViewAvatar';
      default:
        return 'NotFound';
    }
  }
}
