import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:science_dex/screens/helper/science_dex_colors.dart';
import 'package:science_dex/screens/helper/style_text/science_dex_typography.dart';

class ScienceDexSimpleTextField extends StatefulWidget {
  final FocusNode focusNode;
  final TextEditingController controller;
  final bool? readOnly;
  final TextInputType? textInputType;
  final int? maxLines;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final EdgeInsets? padding;
  final String? labelText;
  final Function()? opTapOutSide;
  final TextInputAction? textInputAction;

  const ScienceDexSimpleTextField({
    super.key,
    this.padding,
    required this.controller,
    this.readOnly,
    this.textInputType,
    this.maxLines = 1,
    this.onChanged,
    this.onSubmitted,
    required this.focusNode,
    this.labelText,
    this.opTapOutSide,
    this.textInputAction,
  });

  @override
  State<ScienceDexSimpleTextField> createState() => _ScienceDexSimpleTextFieldState();
}

class _ScienceDexSimpleTextFieldState extends State<ScienceDexSimpleTextField> {
  TextStyle get _labelTextStyle =>
      const Text("").bodyTinyMedium(style: TextStyle(color: ScienceDexColors.label)).style!;

  TextStyle get _defaultTextStyle => const Text("").bodyTinyMedium().style!;

  Color get _backgroundColor => widget.focusNode.hasFocus ? ScienceDexColors.white : ScienceDexColors.white;

  OutlineInputBorder get _border => OutlineInputBorder(
      borderRadius: BorderRadius.circular(5), borderSide: BorderSide(color: ScienceDexColors.label, width: 2));

  OutlineInputBorder get _defaultFocusedBorder {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(5), borderSide: const BorderSide(color: ScienceDexColors.gray, width: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.0,
      padding: widget.padding ?? EdgeInsets.zero,
      alignment: Alignment.center,
      child: TextField(
          cursorHeight: 13,
          keyboardAppearance: Brightness.light,
          controller: widget.controller,
          readOnly: widget.readOnly ?? false,
          style: _defaultTextStyle,
          textInputAction: widget.textInputAction,
          focusNode: widget.focusNode,
          onTapOutside: (_) {
            widget.opTapOutSide != null ? widget.opTapOutSide?.call() : widget.focusNode.unfocus();
          },
          onSubmitted: widget.onSubmitted,
          onChanged: widget.onChanged,
          maxLines: widget.maxLines,
          keyboardType: widget.textInputType,
          cursorColor: ScienceDexColors.secondaryColor,
          decoration: InputDecoration(
              filled: true,
              isCollapsed: false,
              constraints: BoxConstraints.expand(height: 31),
              fillColor: _backgroundColor,
              enabledBorder: _border,
              focusedBorder: _defaultFocusedBorder,
              labelStyle: _labelTextStyle)),
    );
  }
}
