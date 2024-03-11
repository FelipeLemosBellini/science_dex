import 'package:flutter/material.dart';
import 'package:science_dex/screens/helper/science_dex_colors.dart';
import 'package:science_dex/screens/helper/style_text/science_dex_typography_font_size.dart';
import 'package:science_dex/screens/helper/style_text/science_dex_typography_font_weight.dart';

// https://medium.com/@felipelemosbellini/como-gerar-estilos-de-texto-personalizados-em-flutter-usando-loop-for-5fc1b9a25eab

extension TypographyExtension on Text {
  Text bodyTinyExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeExtraLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.extraLight,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeLight({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.light,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeRegular({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.regular,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeMedium({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.medium,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinySemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeSemiBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.semiBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny, fontWeight: ScienceDexTypographyFontWight.bold, mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.bold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.bold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base, fontWeight: ScienceDexTypographyFontWight.bold, mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.bold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.bold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.bold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.tiny,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraSmall,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.small,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.base,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.medium,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.large,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeExtraBold({TextStyle? style}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: ScienceDexTypographyFontSize.extraLarge,
        fontWeight: ScienceDexTypographyFontWight.extraBold,
        mergeStyle: style);
    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  TextStyle _getTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required TextStyle? mergeStyle,
  }) {
    return TextStyle(
            fontSize: fontSize,
            fontStyle: FontStyle.normal,
            color: ScienceDexColors.black,
            fontFamily: 'Inter',
            fontWeight: fontWeight)
        .merge(mergeStyle);
  }

  Text _getTextTypography({required Text text, required TextStyle textStyle}) {
    return Text(text.data!,
        style: textStyle,
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior);
  }
}
