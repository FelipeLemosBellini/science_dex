import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ScienceDexDropDownList extends StatelessWidget {
  final List<String>? values;
  final String selectedValue;
  final String defaultValue;
  final ValueChanged<String?>? onChange;

  const ScienceDexDropDownList({
    super.key,
    this.values,
    required this.selectedValue,
    required this.defaultValue,
    this.onChange,
  });

  String? _getValue() {
    var _hasValue = selectedValue.isEmpty;
    var firstValue = values != null && values!.isNotEmpty ? values?.first : defaultValue;
    return _hasValue ? firstValue : selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(color: ScienceDexColors.grayBorder),
      ),
      child: DropdownButton<String>(
          isExpanded: true,
          isDense: true,
          onChanged: onChange,
          underline: const SizedBox.shrink(),
          value: _getValue(),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          dropdownColor: ScienceDexColors.white,
          iconSize: 20,
          enableFeedback: true,
          icon: Icon(Icons.keyboard_arrow_down_outlined, color: ScienceDexColors.gray),
          items: values
              ?.map<DropdownMenuItem<String>>((String value) => DropdownMenuItem(
                    value: value,
                    child: Align(alignment: Alignment.centerRight, child: Text(value).bodyExtraSmallRegular()),
                  ))
              .toList()),
    );
  }
}
