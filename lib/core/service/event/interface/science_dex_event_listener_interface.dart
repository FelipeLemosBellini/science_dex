import 'package:science_dex/core/service/event/interface/science_dex_listener_interface.dart';

abstract class IEventListener {
  void add({required IScienceDexListener listener, required String eventType});

  void cancel({required IScienceDexListener listener, required String eventType});

  void fire({dynamic value, required String eventType});
}
