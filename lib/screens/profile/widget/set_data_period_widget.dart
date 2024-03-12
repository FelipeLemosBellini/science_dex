import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';
import 'package:science_dex/screens/profile/widget/set_date_period_widget.dart';
import 'package:science_dex/screens/profile/widget/set_target_value_widget.dart';
import 'package:science_dex/screens/widgets/export_science_dex_material.dart';
import 'package:science_dex/screens/widgets/science_dex_drop_down_list.dart';

class SetDataPeriodWidget extends StatelessWidget {
  final List<String> categories;
  final String selectedCategory;
  final ValueChanged<String?>? onChangeCategory;

  const SetDataPeriodWidget({
    super.key,
    required this.categories,
    required this.selectedCategory,
    this.onChangeCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(children: [
        SetDatePeriodWidget(title: "Começa", onTapDate: () {}),
        ScienceDexDividerWidget(padding: EdgeInsets.symmetric(vertical: 7), height: 1, color: ScienceDexColors.gray),
        SetDatePeriodWidget(title: "Termina", onTapDate: () {}),
        ScienceDexDividerWidget(padding: EdgeInsets.symmetric(vertical: 7), height: 1, color: ScienceDexColors.gray),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(child: Text("Categoria").bodyExtraSmallMedium()),
          Expanded(
              child: ScienceDexDropDownList(
            onChange: onChangeCategory,
            defaultValue: selectedCategory,
            selectedValue: selectedCategory,
            values: categories,
          ))
        ]),
        SizedBox(height: 27),
        SetTargetValueWidget()
      ]),
    );
  }
}
