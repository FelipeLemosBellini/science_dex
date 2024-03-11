import 'package:flutter/cupertino.dart';

class ConfigurationModel extends ChangeNotifier {
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();

  TextEditingController get controller => _controller;
  FocusNode get focusNode => _focusNode;
}
