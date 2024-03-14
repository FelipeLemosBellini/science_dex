import 'package:flutter/material.dart';
import 'package:science_dex/core/entity/period_entity.dart';

class PeriodState {
  PeriodEntity? periodEntity;
  DateTime? startDate;
  DateTime? endDate;

  TextEditingController periodController = TextEditingController();
  TextEditingController targetOneController = TextEditingController();
  TextEditingController targetTwoController = TextEditingController();
  FocusNode periodFocus = FocusNode();
  FocusNode targetOneFocus = FocusNode();
  FocusNode targetTwoFocus = FocusNode();
  String selectedCategory = '';

  List<String> categories = [
    "Categoria 1",
    "Categoria 2",
    "Categoria 3",
    "Categoria 4",
    "Categoria 5",
  ];

  bool editionMode = false;

  PeriodState copyWith({
    PeriodEntity? periodEntity,
    TextEditingController? periodController,
    TextEditingController? targetOneController,
    TextEditingController? targetTwoController,
    FocusNode? periodFocus,
    FocusNode? targetTwoFocus,
    FocusNode? targetOneFocus,
    String? selectedCategory,
    List<String>? categories,
    DateTime? firstDate,
    DateTime? endDate,
    bool? editionMode,
  }) {
    return PeriodState()
      ..editionMode = editionMode ?? this.editionMode
      ..periodEntity = periodEntity ?? this.periodEntity
      ..periodController = periodController ?? this.periodController
      ..periodFocus = periodFocus ?? this.periodFocus
      ..selectedCategory = selectedCategory ?? this.selectedCategory
      ..categories = categories ?? this.categories
      ..startDate = firstDate ?? this.startDate
      ..endDate = endDate ?? this.endDate
      ..targetOneController = targetOneController ?? this.targetOneController
      ..targetTwoController = targetTwoController ?? this.targetTwoController
      ..targetOneFocus = targetOneFocus ?? this.targetOneFocus
      ..targetTwoFocus = targetTwoFocus ?? this.targetTwoFocus;
  }
}
