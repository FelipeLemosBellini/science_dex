import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:science_dex/core/helpers/keys_local_storage.dart';
import 'package:science_dex/core/service/gallery/gallery_service.dart';
import 'package:science_dex/core/service/local_storage/local_storage.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/structure/profile/configuration/configuration_state.dart';

class ConfigurationBloc extends Cubit<ConfigurationState> {
  final GalleryService _galleryService = GalleryService();
  final LocalStorage _localStorage = LocalStorage();

  ConfigurationBloc() : super(ConfigurationState.empty()) {
    _initModel();
  }

  _initModel() {
    _getName();
    _getPhotoProfile();
  }

  void setImage() async {
    File? image = await _galleryService.getImageGallery();
    _saveImage(image);
    emit(state.copyWith(imageProfile: image));
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
    state.controller.text = name;
    state.nameUser = name.isNotEmpty ? state.nameUser = name : state.nameUser = "Undefined User";

    emit(state.copyWith(nameUser: state.nameUser));
  }

  void _getPhotoProfile() async {
    String path = await _localStorage.get(KeyLocalStorage.photoProfileKey);
    emit(state.copyWith(imageProfile: File(path)));
  }

  void addPeriod(BuildContext context) {
    ScienceDexRoutersPopUp.openPeriodPage(context: context);
  }
}
