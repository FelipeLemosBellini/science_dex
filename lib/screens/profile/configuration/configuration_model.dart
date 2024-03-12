import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:science_dex/core/helpers/keys_local_storage.dart';
import 'package:science_dex/core/service/gallery/gallery_service.dart';
import 'package:science_dex/core/service/local_storage/local_storage.dart';
import 'package:science_dex/screens/profile/widget/dialog_widget/science_dex_dialog_widget.dart';

class ConfigurationModel extends ChangeNotifier {
  final GalleryService _galleryService = GetIt.I.get<GalleryService>();
  final LocalStorage _localStorage = GetIt.I.get<LocalStorage>();

  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();
  File _imageProfile = File("");
  String _nameUser = "";

  TextEditingController get controller => _controller;
  FocusNode get focusNode => _focusNode;
  File? get imageProfile => _imageProfile;
  String get name => _nameUser;

  ConfigurationModel() {
    _initModel();
  }

  _initModel() {
    _getName();
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

  void setName(String surname) {
    _localStorage.put(KeyLocalStorage.surnameKey, surname);
    _getName();
  }

  void _getName() async {
    String name = await _localStorage.get(KeyLocalStorage.surnameKey);
    _controller.text = name;
    if (name.isNotEmpty) {
      _nameUser = name;
    } else {
      _nameUser = "Undefined User";
    }
    notifyListeners();
  }

  void _getPhotoProfile() async {
    String path = await _localStorage.get(KeyLocalStorage.photoProfileKey);
    _imageProfile = File(path);
    notifyListeners();
  }

  void addPeriod(BuildContext context){
    ScienceDexDialog.show(context);
  }
}
