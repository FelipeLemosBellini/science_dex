import 'package:flutter/cupertino.dart';
import 'package:science_dex/screens/profile/period/period_page.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

abstract class ScienceDexRoutersPopUp {
  static void openPeriodPage(BuildContext context) {
    ScienceDexDialog.show(context: context, child: PeriodPage());
  }
}
