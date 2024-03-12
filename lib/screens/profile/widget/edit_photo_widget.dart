import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class EditPhotoWidget extends StatelessWidget {
  final Function() onTapPhoto;
  const EditPhotoWidget({super.key, required this.onTapPhoto});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(left: 8, right: 12),
      decoration:
          BoxDecoration(color: ScienceDexColors.grayExtraLight, borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Row(children: [
        ScienceDexGestureDetector(
          onTap: onTapPhoto,
          child: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle),
          child: Text("d"),
          ),
        ),
        SizedBox(width: 10),
        Text("Editar foto").bodyTinyMedium(),
      ]),
    );
  }
}
