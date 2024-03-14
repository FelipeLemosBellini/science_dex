import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class SetDatePeriodWidget extends StatelessWidget {
  final String title;
  final Function() onTapDate;
  final DateTime? dateTime;
  final bool isOnlyRead;

  const SetDatePeriodWidget({
    super.key,
    required this.title,
    required this.onTapDate,
    this.dateTime,
    required this.isOnlyRead,
  });

  Color get borderColor => isOnlyRead ? ScienceDexColors.white : ScienceDexColors.grayBorder;
  Alignment get alignmentText => isOnlyRead ? Alignment.centerRight : Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(title).bodyExtraSmallMedium(),
      ScienceDexGestureDetector(
          onTap: onTapDate,
          child: Container(
              width: 103,
              alignment: alignmentText,
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: ScienceDexColors.white,
                  border: Border.all(color: borderColor, width: 1)),
              child: Text(ScienceDexDateHelper.formatPeriodDate(dateTime))
                  .bodyTinyRegular(style: TextStyle(fontSize: 10))))
    ]);
  }
}
