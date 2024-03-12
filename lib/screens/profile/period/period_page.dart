import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/period/period_model.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class PeriodPage extends StatefulWidget {
  const PeriodPage({super.key});

  @override
  State<PeriodPage> createState() => _PeriodPageState();
}

class _PeriodPageState extends State<PeriodPage> {
  @override
  Widget build(BuildContext context) {
    PeriodModel periodModel = Provider.of<PeriodModel>(context);
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(alignment: Alignment.center, children: [
              Align(alignment: Alignment.center, child: Text("Novo Período").bodyExtraSmallSemiBold()),
              Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.close, color: ScienceDexColors.grayIcon, size: 24))
            ]),
            SizedBox(height: 41),
            ScienceDexTextField(
              controller: periodModel.periodController,
              focusNode: periodModel.periodFocus,
              labelText: "Nomeie seu período",
            )
          ],
        ));
  }
}
