import 'package:go_router/go_router.dart';
import 'package:science_dex/routes/route_names.dart';
import 'package:science_dex/screens/profile/configuration/configuration_page.dart';

abstract class RouteGenerate {
  static dynamic _param(Object? map, String arg) {
    Map<String, dynamic>? args = map as Map<String, dynamic>;
    return args[arg];
  }

  static GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(path: RouteNames.initial, builder: (context, state) => const ConfigurationPage()),
    // GoRoute(
    //     name: RouteNames.diameterPage,
    //     path: "/${RouteNames.diameterPage}",
    //     builder: (context, state) => const HomePage()),
    // GoRoute(
    //     name: RouteNames.exercisePage,
    //     path: "/${RouteNames.exercisePage}",
    //     pageBuilder: (context, state) => CustomTransitionPage(
    //         transitionDuration: const Duration(milliseconds: 600),
    //         transitionsBuilder: AnimationTransitions.leftToRight,
    //         child: CreateWorkoutPage(gymWorkOutModel: _param(state.extra, "gymWorkOutModel"))))
  ]);
}
// quando passa no pathParameters null ele quebra
// no extra eu consigo tratar esse null
