import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class SetTargetValueWidget extends StatelessWidget {
  const SetTargetValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(child: Text('Meta 1').bodyExtraSmallMedium()),
      Expanded(
          child: ScienceDexSmallNumberTextField(
        focusNode: FocusNode(),
        controller: TextEditingController(),
      ))
    ]);
  }
}
