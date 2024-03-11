import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ItemPeriodWidget extends StatelessWidget {
  const ItemPeriodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: EdgeInsets.only(left: 14, right: 8),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
          color: ScienceDexColors.white,
          border: Border.all(color: ScienceDexColors.grayBorder, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Super feirão").bodySmallSemiBold(),
        Text("01/01/20 a 01/01/20").bodyTinyRegular(style: TextStyle(color: ScienceDexColors.dateBlack)),
      ]),
    );
  }
}
