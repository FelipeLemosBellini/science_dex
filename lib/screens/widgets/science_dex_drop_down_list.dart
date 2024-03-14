import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/export_helper_screen.dart';

class ScienceDexDropDownList extends StatelessWidget {
  final List<String>? values;
  final String selectedValue;
  final String defaultValue;
  final ValueChanged<String?>? onChange;
  final bool isOnlyRead;

  const ScienceDexDropDownList({
    super.key,
    this.values,
    required this.selectedValue,
    required this.defaultValue,
    this.onChange,
    required this.isOnlyRead,
  });

  String? _getValue() {
    var _hasValue = selectedValue.isEmpty;
    var firstValue = values != null && values!.isNotEmpty ? values?.first : defaultValue;
    return _hasValue ? firstValue : selectedValue;
  }

  Color get _borderColor => isOnlyRead ? ScienceDexColors.white : ScienceDexColors.grayBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
          color: ScienceDexColors.white,
          borderRadius: BorderRadius.all(Radius.circular(7)),
          border: Border.all(color: _borderColor)),
      child: Visibility(
        visible: isOnlyRead,
        child: Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(selectedValue).bodyExtraSmallRegular(style: TextStyle(fontSize: 10)),
        ),
        replacement: DropdownButton<String>(
            isExpanded: true,
            isDense: true,
            onChanged: onChange,
            underline: const SizedBox.shrink(),
            value: _getValue(),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            dropdownColor: ScienceDexColors.white,
            iconSize: 20,
            elevation: 1,
            enableFeedback: true,
            icon: Icon(Icons.keyboard_arrow_down_outlined, color: ScienceDexColors.gray),
            items: values
                ?.map<DropdownMenuItem<String>>((String value) => DropdownMenuItem(
                    value: value,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(value).bodyExtraSmallRegular(style: TextStyle(fontSize: 10)),
                    )))
                .toList()),
      ),
    );
  }
}
