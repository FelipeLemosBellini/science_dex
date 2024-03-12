import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:science_dex/core/service/gallery/interface/gallery_service_interface.dart';

class GalleryService extends IGalleryService {
  @override
  Future<File?> getImageGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? response = await picker.pickImage(source: ImageSource.gallery);
    if (response != null) {
      File image = File(response.path);
      return image;
    }
    return null;
  }
}
