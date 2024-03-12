import 'package:get_it/get_it.dart';
import 'package:science_dex/core/service/gallery/gallery_service.dart';
import 'package:science_dex/core/service/local_storage/local_storage.dart';

abstract class DI {
  static final _getIt = GetIt.I;
  static void setupDependencies() {
    _getIt.registerFactory<GalleryService>(() => GalleryService());
    _getIt.registerFactory<LocalStorage>(() => LocalStorage());
  }
}
