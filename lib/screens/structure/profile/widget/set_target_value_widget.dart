import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class SetTargetValueWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final TextEditingController textController;
  final FocusNode focusNode;
  final String targetTitle;
  final bool isReadOnly;

  const SetTargetValueWidget({
    super.key,
    this.padding,
    required this.textController,
    required this.focusNode,
    required this.targetTitle,
    required this.isReadOnly,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(targetTitle).bodyTinyMedium(),
            Visibility(
              visible: isReadOnly,
              child: Text(textController.text).bodyTinyMedium(style: TextStyle(fontSize: 10)),
              replacement: ScienceDexSmallNumberTextField(
                focusNode: focusNode,
                controller: textController,
                labelText: "Un",
              ),
            )
          ]),
        ));
  }
}
