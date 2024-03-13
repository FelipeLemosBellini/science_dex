import 'dart:io';

import 'package:flutter/material.dart';

class ConfigurationViewModel {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  File imageProfile = File("");
  String nameUser = "";

  ConfigurationViewModel({
    required this.controller,
    required this.imageProfile,
    required this.focusNode,
    required this.nameUser,
  });

  ConfigurationViewModel copyWith({
    TextEditingController? controller,
    String? nameUser,
    File? imageProfile,
    FocusNode? focusNode,
  }) {
    return ConfigurationViewModel(
      controller: controller ?? this.controller,
      nameUser: nameUser ?? this.nameUser,
      focusNode: focusNode ?? this.focusNode,
      imageProfile: imageProfile ?? this.imageProfile,
    );
  }

  factory ConfigurationViewModel.empty() {
    return ConfigurationViewModel(
      controller: TextEditingController(),
      focusNode: FocusNode(),
      imageProfile: File(""),
      nameUser: "",
    );
  }
}
