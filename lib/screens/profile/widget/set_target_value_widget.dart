import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class SetTargetValueWidget extends StatelessWidget {
  final EdgeInsets? padding;
  const SetTargetValueWidget({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Meta 1').bodyExtraSmallMedium(),
            ScienceDexSmallNumberTextField(
              focusNode: FocusNode(),
              controller: TextEditingController(),
              labelText: "Un",
            )
          ]),
        ));
  }
}
