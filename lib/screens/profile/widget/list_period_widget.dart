import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/widget/item_period_widget.dart';

class ListPeriodWidget extends StatelessWidget {
  final EdgeInsets? margin;
  const ListPeriodWidget({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: EdgeInsets.all(8),
      height: MediaQuery.sizeOf(context).height * 0.5,
      decoration: BoxDecoration(color: ScienceDexColors.grayLight, borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ListView(shrinkWrap: true, physics: BouncingScrollPhysics(), children: [
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
        ItemPeriodWidget(),
      ]),
    );
  }
}
