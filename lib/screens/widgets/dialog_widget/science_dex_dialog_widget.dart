import 'package:flutter/material.dart';

abstract class ScienceDexDialog {
  static Future<void> show({required BuildContext context, required Widget child}) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.25),
        builder: (_) => AlertDialog(
            contentPadding: const EdgeInsets.all(14),
            alignment: Alignment.center,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            content: child));
  }
}
