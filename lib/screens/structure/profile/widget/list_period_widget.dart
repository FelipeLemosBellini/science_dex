import 'package:flutter/material.dart';
import 'package:science_dex/core/entity/period_entity.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/structure/profile/widget/item_period_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';

class ListPeriodWidget extends StatelessWidget {
  final EdgeInsets? margin;
  final List<PeriodEntity> list;
  final Function(PeriodEntity) onTap;

  const ListPeriodWidget({
    super.key,
    this.margin,
    required this.list,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin ?? EdgeInsets.zero,
        padding: EdgeInsets.all(8),
        height: MediaQuery.sizeOf(context).height * 0.5,
        decoration:
            BoxDecoration(color: ScienceDexColors.grayLight, borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Visibility(
          visible: list.isNotEmpty,
          replacement: Center(child: Text("Não há períodos ainda").bodyExtraSmallMedium()),
          child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (_, index) {
                return ItemPeriodWidget(onTap: onTap, periodEntity: list[index]);
              }),
        ));
  }
}
