import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';
import 'package:science_dex/screens/widgets/science_dex_image_file_widget.dart';

class EditPhotoWidget extends StatelessWidget {
  final Function() onTapPhoto;
  final File? fileImage;

  const EditPhotoWidget({super.key, required this.onTapPhoto, this.fileImage});

  @override
  Widget build(BuildContext context) {
    return ScienceDexGestureDetector(
      onTap: onTapPhoto,
      child: Container(
        height: 55,
        padding: EdgeInsets.only(left: 8, right: 12),
        decoration:
            BoxDecoration(color: ScienceDexColors.grayExtraLight, borderRadius: BorderRadius.all(Radius.circular(9))),
        child: Row(children: [
          ScienceDexImageFileWidget(file: fileImage, size: 44),
          SizedBox(width: 10),
          Text("Editar foto").bodyTinyMedium(),
        ]),
      ),
    );
  }
}
