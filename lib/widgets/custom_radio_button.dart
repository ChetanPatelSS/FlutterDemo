import 'package:flutter/material.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/size_utils.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.fontStyle,
      this.alignment,
      this.onChange,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.margin});

  RadioFontStyle? fontStyle;

  Alignment? alignment;

  Function(String)? onChange;

  bool? isRightCheck;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  double? width;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildRadioButtonWidget(),
          )
        : _buildRadioButtonWidget();
  }

  _buildRadioButtonWidget() {
    return InkWell(
      onTap: () {
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        child: isRightCheck! ? getRightSideRadio() : getLeftSideRadio(),
      ),
    );
  }

  Widget getRightSideRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getRadioWidget(),
      ],
    );
  }

  Widget getLeftSideRadio() {
    return Row(
      children: [
        getRadioWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getRadioWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Radio<String>(
        value: value ?? "",
        groupValue: groupValue,
        activeColor: ColorConstant.lightBlue600,
        onChanged: (value) {
          onChange!(value!);
        },
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.TitilliumWebBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Titillium Web',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.57,
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

enum RadioFontStyle {
  TitilliumWebRegular12,
  TitilliumWebBold14,
}
