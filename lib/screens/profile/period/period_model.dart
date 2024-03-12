import 'package:flutter/cupertino.dart';

class PeriodModel extends ChangeNotifier {
  TextEditingController _periodController = TextEditingController();
  FocusNode _periodFocus = FocusNode();
  TextEditingController get periodController => _periodController;
  FocusNode get periodFocus => _periodFocus;
}
