import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

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
          Container(
              height: 44,
              width: 44,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: ScienceDexColors.grayBorder, shape: BoxShape.circle),
              child: fileImage!.path.isNotEmpty
                  ? ClipOval(
                      child: Image.file(
                      fileImage ?? File(""),
                      filterQuality: FilterQuality.high,
                      width: 44,
                      height: 44,
                      fit: BoxFit.cover,
                    ))
                  : Icon(Icons.person)),
          SizedBox(width: 10),
          Text("Editar foto").bodyTinyMedium(),
        ]),
      ),
    );
  }
}
