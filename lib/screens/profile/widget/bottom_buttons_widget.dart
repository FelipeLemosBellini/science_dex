import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class BottomButtonsWidget extends StatelessWidget {
  final Function() editOnTap;
  final Function() deleteOnTap;

  const BottomButtonsWidget({
    super.key,
    required this.editOnTap,
    required this.deleteOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ScienceDexPillButton(onTap: deleteOnTap, text: "Excluir", backgroundColor: ScienceDexColors.red),
          ScienceDexPillButton(onTap: editOnTap, text: "Editar")
        ]));
  }
}
