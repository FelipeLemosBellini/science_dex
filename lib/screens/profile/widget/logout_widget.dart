import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class LogoutWidget extends StatelessWidget {
  final EdgeInsets? padding;
  final String name;
  const LogoutWidget({super.key, this.padding, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(children: [
        Container(
          height: 51,
          width: 51,
          decoration: BoxDecoration(color: ScienceDexColors.secondaryColor, shape: BoxShape.circle),
        ),
        SizedBox(width: 14),
        Column(children: [
          Text(name).bodyBaseMedium(),
        ])
      ]),
    );
  }
}
