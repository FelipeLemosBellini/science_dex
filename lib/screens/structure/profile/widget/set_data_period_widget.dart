import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/structure/profile/widget/set_date_period_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';
import 'package:science_dex/screens/widgets/science_dex_drop_down_list.dart';

class SetDataPeriodWidget extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final ValueChanged<String?>? onChangeCategory;
  final Function() openStartDate;
  final Function() openEndDate;
  final DateTime? startDate;
  final DateTime? endDate;
  final bool isOnlyRead;

  const SetDataPeriodWidget({
    super.key,
    required this.categories,
    required this.selectedCategory,
    this.onChangeCategory,
    required this.openStartDate,
    required this.openEndDate,
    this.startDate,
    this.endDate,
    required this.isOnlyRead,
  });

  Color get backgroundColor => isOnlyRead ? ScienceDexColors.white : ScienceDexColors.grayBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.all(Radius.circular(5))),
        padding: EdgeInsets.all(18),
        child: Column(children: [
          SetDatePeriodWidget(
            title: "Começa",
            isOnlyRead: isOnlyRead,
            onTapDate: openStartDate,
            dateTime: startDate,
          ),
          ScienceDexDividerWidget(padding: EdgeInsets.symmetric(vertical: 7), height: 1, color: ScienceDexColors.gray),
          SetDatePeriodWidget(
            title: "Termina",
            isOnlyRead: isOnlyRead,
            onTapDate: openEndDate,
            dateTime: endDate,
          ),
          ScienceDexDividerWidget(padding: EdgeInsets.symmetric(vertical: 7), height: 1, color: ScienceDexColors.gray),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(child: Text("Categoria").bodyExtraSmallMedium()),
            Expanded(
                child: ScienceDexDropDownList(
              isOnlyRead: isOnlyRead,
              onChange: onChangeCategory,
              defaultValue: selectedCategory,
              selectedValue: selectedCategory,
              values: categories,
            ))
          ])
        ]));
  }
}
