import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/widget/edit_photo_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class EditUserWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final EdgeInsets? padding;
  final Function(String)? onSubmitted;
  final Function() onTapPhoto;
  final File? fileProfile;

  const EditUserWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.padding,
    this.onSubmitted,
    required this.onTapPhoto,
    this.fileProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flexible(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Apelido").bodyTinyMedium(),
          SizedBox(height: 4),
          ScienceDexTextField(
            controller: controller,
            focusNode: focusNode,
            onSubmitted: onSubmitted,
            textInputAction: TextInputAction.send,
            padding: EdgeInsets.only(top: 5),
            labelText: "Apelido",
          )
        ])),
        SizedBox(width: 10),
        EditPhotoWidget(onTapPhoto: onTapPhoto, fileImage: fileProfile)
      ]),
    );
  }
}
