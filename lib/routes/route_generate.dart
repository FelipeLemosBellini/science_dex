import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:science_dex/routes/route_names.dart';
import 'package:science_dex/screens/structure/profile/configuration/configuration_page.dart';

abstract class RouteGenerate {
  static GoRouter router = GoRouter(initialLocation: RouteNames.initial, routes: [
    GoRoute(
        path: RouteNames.initial,
        pageBuilder: (context, state) => MaterialPage(
              fullscreenDialog: true,
              child: const ConfigurationPage(),
            )),
    // GoRoute(
    //     name: RouteNames.testePage,
    //     path: "/${RouteNames.testePage}",
    //     pageBuilder: (context, state) => CustomTransitionPage(
    //         transitionDuration: const Duration(milliseconds: 600),
    //         transitionsBuilder: AnimationTransitions.rightToLeft,
    //         child: const TestePage())),
    ]);
}
// quando passa no pathParameters null ele quebra
// no extra eu consigo tratar esse null
