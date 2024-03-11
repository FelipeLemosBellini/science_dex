import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class ScienceDexPrimaryButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final EdgeInsets? padding;
  const ScienceDexPrimaryButton({
    super.key,
    required this.onTap,
    required this.text,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ScienceDexGestureDetector(
      onTap: onTap,
      child: Container(
        height: 24,
        padding: padding ?? EdgeInsets.zero,
        decoration:
            BoxDecoration(color: ScienceDexColors.secondaryColor, borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Text(text).bodyTinySemiBold(style: TextStyle(color: ScienceDexColors.white, height: 10)),
      ),
    );
  }
}
