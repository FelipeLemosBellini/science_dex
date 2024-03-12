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
  File _imageProfile = File("");

  TextEditingController get controller => _controller;
  FocusNode get focusNode => _focusNode;
  File? get imageProfile => _imageProfile;

  ConfigurationModel() {
    _initModel();
  }

  _initModel() {
    _getSurname();
    _getPhotoProfile();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void setImage() async {
    File? image = await _galleryService.getImageGallery();
    _imageProfile = image ?? File('');
    _saveImage(image);
    notifyListeners();
  }

  void _saveImage(File? image) async {
    if (image != null && image.path.isNotEmpty) {
      await _localStorage.put(KeyLocalStorage.photoProfileKey, image.path);
    }
  }

  void setSurname(String surname) => _localStorage.put(KeyLocalStorage.surnameKey, surname);

  void _getSurname() async {
    controller.text = await _localStorage.get(KeyLocalStorage.surnameKey);
    notifyListeners();
  }

  void _getPhotoProfile() async {
    String path = await _localStorage.get(KeyLocalStorage.photoProfileKey);
    _imageProfile = File(path);
    notifyListeners();
  }
}
