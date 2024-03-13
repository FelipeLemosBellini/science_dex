import 'package:flutter/material.dart';

class PeriodState {
  TextEditingController periodController = TextEditingController();
  FocusNode periodFocus = FocusNode();
  String selectedCategory = '';
  List<String> categories = [
    "Categoria 1",
    "Categoria 2",
    "Categoria 3",
    "Categoria 4",
    "Categoria 5",
  ];
}
