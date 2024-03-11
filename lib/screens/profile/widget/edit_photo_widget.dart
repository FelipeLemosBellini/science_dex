import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class EditPhotoWidget extends StatelessWidget {
  const EditPhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: EdgeInsets.only(left: 8, right: 12),
      decoration:
          BoxDecoration(color: ScienceDexColors.grayExtraLight, borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Row(children: [
        Container(height: 44, width: 44, decoration: BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle)),
        SizedBox(width: 10),
        Text("Editar foto").bodyTinyMedium(),
      ]),
    );
  }
}
