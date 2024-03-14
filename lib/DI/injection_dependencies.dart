import 'package:get_it/get_it.dart';
import 'package:science_dex/core/repository/profile/profile_repository.dart';
import 'package:science_dex/core/service/event/science_dex_event_listener.dart';
import 'package:science_dex/screens/structure/profile/configuration/configuration_bloc.dart';
import 'package:science_dex/screens/structure/profile/period/period_bloc.dart';

abstract class DI {
  static final _getIt = GetIt.I;
  static void setupDependencies() {
    _getIt.registerFactory<ConfigurationBloc>(() => ConfigurationBloc());
    _getIt.registerFactory<PeriodBloc>(() => PeriodBloc(
          profileRepository: ProfileRepository(),
          eventListener: ScienceDexEventListener(),
        ));
    _getIt.registerFactory<ProfileRepository>(() => ProfileRepository());
    _getIt.registerFactory<ScienceDexEventListener>(() => ScienceDexEventListener());
  }
}
