import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ScienceDexAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String textTitle;
  ScienceDexAppBar({required this.textTitle}) : super();

  @override
  Widget build(BuildContext context) {
    double heightTop = MediaQuery.paddingOf(context).top;
    return Container(
        height: 54 + heightTop,
        color: ScienceDexColors.scaffoldBackground,
        padding: EdgeInsets.only(left: 20),
        child: Column(children: [
          const Spacer(),
          Row(children: [
            SvgPicture.asset(ScienceDexVector.arrow_back.svg),
            Text(textTitle).bodyLargeSemiBold(),
          ])
        ]));
  }

  @override
  Size get preferredSize => Size.fromHeight(200);
}
