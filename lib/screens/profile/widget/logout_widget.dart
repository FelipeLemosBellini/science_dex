import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

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
        Container(
            height: 51,
            width: 51,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: ScienceDexColors.grayBorder, shape: BoxShape.circle),
            child: imageProfile!.path.isNotEmpty
                ? ClipOval(
                    child: Image.file(
                    imageProfile ?? File(""),
                    filterQuality: FilterQuality.high,
                    width: 51,
                    height: 51,
                    fit: BoxFit.cover,
                  ))
                : Icon(Icons.person)),
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
