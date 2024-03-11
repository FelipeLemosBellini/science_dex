import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class EditPhotoWidget extends StatelessWidget {
  const EditPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration:
          BoxDecoration(color: ScienceDexColors.grayExtraLight, borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Row(children: [
        Expanded(
            child: Container(
                margin: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 12),
                decoration: BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle))),
        Text("Editar foto").bodyTinyMedium(),
        SizedBox(width: 8)
      ]),
    );
  }
}
