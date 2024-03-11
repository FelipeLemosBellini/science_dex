import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ScienceDexDividerWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final Color? color;
  final double? height;
  const ScienceDexDividerWidget({super.key, this.padding, this.color, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Divider(color: color ?? ScienceDexColors.label, thickness: 2, height: height ?? 0),
    );
  }
}
