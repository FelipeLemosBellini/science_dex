import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/core/entity/period_entity.dart';

class ConfigurationState {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  File imageProfile = File("");
  String nameUser = "";
  List<PeriodEntity> periodList = [];

  ConfigurationState copyWith(
      {TextEditingController? textController,
      String? nameUser,
      File? imageProfile,
      FocusNode? focusNode,
      List<PeriodEntity>? periodList}) {
    return ConfigurationState()
      ..controller = textController ?? this.controller
      ..nameUser = nameUser ?? this.nameUser
      ..focusNode = focusNode ?? this.focusNode
      ..imageProfile = imageProfile ?? this.imageProfile
      ..periodList = periodList ?? this.periodList;
  }
}
