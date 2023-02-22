import 'package:flutter/material.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      case ButtonPadding.PaddingT10:
        return getPadding(
          left: 9,
          top: 10,
          right: 9,
          bottom: 10,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineTeal90019:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineLightblue60001:
        return ColorConstant.lightBlue6001901;
      case ButtonVariant.OutlineLightblue6000c:
        return ColorConstant.lightBlue60033;
      case ButtonVariant.OutlineLightblue6000c_1:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.lightBlue600;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineLightblue60001:
        return BorderSide(
          color: ColorConstant.lightBlue60001,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineTeal90019:
        return ColorConstant.teal90019;
      case ButtonVariant.OutlineLightblue6000c:
        return ColorConstant.lightBlue6000c;
      case ButtonVariant.OutlineLightblue6000c_1:
        return ColorConstant.lightBlue6000c;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.TitilliumWebBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Titillium Web',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.56,
          ),
        );
      case ButtonFontStyle.TitilliumWebSemiBold12:
        return TextStyle(
          color: ColorConstant.lightBlue600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Titillium Web',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.58,
          ),
        );
      case ButtonFontStyle.TitilliumWebBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Titillium Web',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.58,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Titillium Web',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.58,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
  RoundedBorder10,
}

enum ButtonPadding {
  PaddingAll14,
  PaddingAll6,
  PaddingT10,
}

enum ButtonVariant {
  FillLightblue600,
  OutlineTeal90019,
  OutlineLightblue60001,
  OutlineLightblue6000c,
  OutlineLightblue6000c_1,
}

enum ButtonFontStyle {
  TitilliumWebBold16,
  TitilliumWebSemiBold12,
  TitilliumWebRegular12,
  TitilliumWebBold12,
}
