import 'package:flutter/cupertino.dart';

class PeriodModel extends ChangeNotifier {
  TextEditingController _periodController = TextEditingController();
  FocusNode _periodFocus = FocusNode();

  String _selectedCategory = '';
  List<String> _categories = [
    "Categoria 1",
    "Categoria 2",
    "Categoria 3",
    "Categoria 4",
    "Categoria 5",
  ];

  TextEditingController get periodController => _periodController;
  FocusNode get periodFocus => _periodFocus;
  String get selectedCategory => _selectedCategory;
  List<String> get categories => _categories;

  void setCategorySelected(category) {
    _selectedCategory = category;
    notifyListeners();
  }
}
