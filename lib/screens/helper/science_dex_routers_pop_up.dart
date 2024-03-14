import 'package:flutter/cupertino.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/screens/structure/profile/period/period_page.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

abstract class ScienceDexRoutersPopUp {
  static void openPeriodPage({required BuildContext context, PeriodEntity? periodEntity}) {
    ScienceDexDialog.show(context: context, child: PeriodPage(periodEntity: periodEntity));
  }
}
