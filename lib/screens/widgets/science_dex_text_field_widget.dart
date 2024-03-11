import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:science_dex/screens/helper/science_dex_colors.dart';
import 'package:science_dex/screens/helper/style_text/science_dex_typography.dart';

class ScienceDexTextField extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final bool? readOnly;
  final TextInputType? textInputType;
  final int? maxLines;
  final Function(String)? onChanged;
  final EdgeInsets? padding;
  final String? labelText;
  final Function()? opTapOutSide;

  const ScienceDexTextField({
    super.key,
    this.padding,
    required this.controller,
    this.readOnly,
    this.textInputType,
    this.maxLines = 1,
    this.onChanged,
    required this.focusNode,
    this.labelText,
    this.opTapOutSide,
  });

  @override
  State<ScienceDexTextField> createState() => _ScienceDexTextFieldState();
}

class _ScienceDexTextFieldState extends State<ScienceDexTextField> {
  TextStyle get _labelTextStyle =>
      const Text("").bodyTinyMedium(style: TextStyle(color: ScienceDexColors.label)).style!;

  TextStyle get _defaultTextStyle => const Text("").bodyTinyMedium().style!;

  Color get _backgroundColor => widget.focusNode.hasFocus ? ScienceDexColors.white : ScienceDexColors.grayLight;

  OutlineInputBorder get _border =>
      OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none);

  OutlineInputBorder get _defaultFocusedBorder {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: ScienceDexColors.gray, width: 2), borderRadius: BorderRadius.circular(5));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.0,
      padding: EdgeInsets.all(0.0),
      alignment: Alignment.center,
      child: TextField(
          cursorHeight: 13,
          controller: widget.controller,
          readOnly: widget.readOnly ?? false,
          style: _defaultTextStyle,
          focusNode: widget.focusNode,
          onTapOutside: (_) => widget.opTapOutSide?.call(),
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
          keyboardType: widget.textInputType,
          cursorColor: ScienceDexColors.secondaryColor,
          decoration: InputDecoration(
              filled: true,
              isCollapsed: false,
              constraints: BoxConstraints.expand(height: 31),
              fillColor: _backgroundColor,
              border: _border,
              focusedBorder: _defaultFocusedBorder,
              labelStyle: _labelTextStyle)),
    );
  }
}
