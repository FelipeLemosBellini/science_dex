import 'package:flutter/material.dart';
import 'package:science_dex/routes/route_generate.dart';

abstract class ScienceDexDialog {
  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.25),
      builder: (_) {
        return AlertDialog(
          alignment: Alignment.center,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          content: Text('dsad'),
        );
      },
    );
  }
}
