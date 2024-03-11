import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/widget/edit_photo_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class EditUserWidget extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final EdgeInsets? padding;

  const EditUserWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            flex: 2,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Apelido").bodyTinyMedium(),
              SizedBox(height: 4),
              ScienceDexTextField(
                controller: controller,
                focusNode: focusNode,
                padding: EdgeInsets.only(top: 5),
                labelText: "Apelido",
              )
            ])),
        SizedBox(width: 10),
        Expanded(flex: 1, child: EditPhotoWidget())
      ]),
    );
  }
}
