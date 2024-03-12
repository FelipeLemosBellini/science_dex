import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:science_dex/core/helpers/keys_local_storage.dart';
import 'package:science_dex/core/service/gallery/gallery_service.dart';
import 'package:science_dex/core/service/local_storage/local_storage.dart';

class ConfigurationModel extends ChangeNotifier {
  final GalleryService _galleryService = GetIt.I.get<GalleryService>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();

  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();

  TextEditingController get controller => _controller;
  FocusNode get focusNode => _focusNode;

  ConfigurationModel() {
    _initModel();
  }

  _initModel() {
    _getSurname();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void setImage() async {
    File? image = await _galleryService.getImageGallery();
  }

  void setSurname(String surname) => _localStorage.put(KeyLocalStorage.surnameKey, surname);

  void _getSurname() async {
    controller.text = await _localStorage.get(KeyLocalStorage.surnameKey);
    notifyListeners();
  }
}
