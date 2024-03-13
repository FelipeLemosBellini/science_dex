import 'dart:io';

import 'package:flutter/material.dart';

class ConfigurationState {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  File imageProfile = File("");
  String nameUser = "";

  ConfigurationState({
    required this.controller,
    required this.imageProfile,
    required this.focusNode,
    required this.nameUser,
  });

  ConfigurationState copyWith({
    TextEditingController? controller,
    String? nameUser,
    File? imageProfile,
    FocusNode? focusNode,
  }) {
    return ConfigurationState(
      controller: controller ?? this.controller,
      nameUser: nameUser ?? this.nameUser,
      focusNode: focusNode ?? this.focusNode,
      imageProfile: imageProfile ?? this.imageProfile,
    );
  }

  factory ConfigurationState.empty() {
    return ConfigurationState(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      imageProfile: File(""),
      nameUser: "",
    );
  }
}
