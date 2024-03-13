import 'dart:io';

import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ScienceDexImageFileWidget extends StatelessWidget {
  final double size;
  final File? file;

  const ScienceDexImageFileWidget({super.key, required this.size, this.file});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: ScienceDexColors.grayBorder, shape: BoxShape.circle),
        child: file!.path.isNotEmpty
            ? ClipOval(
                child: Image.file(
                file ?? File(""),
                filterQuality: FilterQuality.high,
                width: size,
                height: size,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Icon(Icons.person),
              ))
            : Icon(Icons.person));
  }
}
