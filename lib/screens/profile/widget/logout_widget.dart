import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/science_dex_image_file_widget.dart';

class LogoutWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final String name;
  final File? imageProfile;
  const LogoutWidget({super.key, this.padding, required this.name, this.imageProfile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(children: [
        ScienceDexImageFileWidget(file: imageProfile, size: 51),
        SizedBox(width: 14),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(name).bodyBaseMedium(style: TextStyle(color: ScienceDexColors.secondaryColor)),
          Text("Sair").bodyBaseMedium(
              style: TextStyle(
                  fontSize: 13, color: ScienceDexColors.secondaryColor, decoration: TextDecoration.underline)),
        ])
      ]),
    );
  }
}
