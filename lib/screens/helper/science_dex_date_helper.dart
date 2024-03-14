import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

abstract class ScienceDexDateHelper {
  static Future<DateTime?> dataPicker(BuildContext context) async {
    DateTime today = DateTime.now();
    return await showDatePicker(
        context: context,
        initialDate: today,
        barrierColor: ScienceDexColors.black.withOpacity(0.25),
        firstDate: today,
        lastDate: DateTime(2100, 1, 1));
  }

  static String formatPeriodDate(DateTime? dateTime) {
    if (dateTime != null) {
      //refatorar a data
      return '${dateTime.day}/${dateTime.weekday}/${dateTime.year}';
    }
    return '';
  }
}
