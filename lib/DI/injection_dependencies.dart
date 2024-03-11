import 'package:get_it/get_it.dart';

abstract class DI {
  static final _getIt = GetIt.I;
  static void setupDependencies() {
    // getIt.registerLazySingleton<IRepositoryGym>(() => RepositoryGym());
    // getIt.registerLazySingleton<IFirebaseAnalytics>(() => RepositoryFirebaseAnalytic());
  }
}
