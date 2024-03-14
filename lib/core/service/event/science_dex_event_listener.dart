import 'dart:collection';
import 'package:science_dex/core/service/event/interface/science_dex_event_listener_interface.dart';
import 'package:science_dex/core/service/event/interface/science_dex_listener_interface.dart';

class ScienceDexEventListener implements IEventListener {
  static final Map<String, Set<IScienceDexListener>> _listeners = HashMap();

  @override
  void cancel({required IScienceDexListener listener, required String eventType}) {
    _listeners[eventType]?.remove(listener);
  }

  @override
  void fire({dynamic value, required String eventType}) {
    Set<IScienceDexListener>? listeners = _listeners[eventType];
    listeners?.forEach((listener) => listener.callbackListener(value));
  }

  @override
  void add({required IScienceDexListener listener, required String eventType}) {
    Set<IScienceDexListener> _listener = _listeners[eventType] ?? <IScienceDexListener>{};
    _listener.add(listener);
    _listeners[eventType] = _listener;
  }
}
