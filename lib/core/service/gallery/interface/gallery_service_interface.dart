import 'dart:io';

abstract class IGalleryService {
  Future<File?> getImageGallery();
}
