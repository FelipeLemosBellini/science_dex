import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class SetDatePeriodWidget extends StatelessWidget {
  final String title;
  final Function() onTapDate;

  const SetDatePeriodWidget({
    super.key,
    required this.title,
    required this.onTapDate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title).bodyExtraSmallMedium(),
      ScienceDexGestureDetector(
          onTap: onTapDate,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: ScienceDexColors.white,
                  border: Border.all(color: ScienceDexColors.grayBorder, width: 1)),
              child: Text("4 de set. de 2023").bodyTinyRegular(style: TextStyle(fontSize: 10))))
    ]);
  }
}
