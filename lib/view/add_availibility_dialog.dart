import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_button.dart';
import 'package:fpp/widgets/custom_checkbox.dart';
import 'package:fpp/widgets/custom_drop_down.dart';
import 'package:fpp/widgets/custom_icon_button.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/widgets/custom_text_form_field.dart';


// ignore_for_file: must_be_immutable
class AddAvailibilityDialog extends StatefulWidget {

  AddAvailibilityDialog({super.key});

  @override
  State<AddAvailibilityDialog> createState() => _AddAvailibilityDialogState();
}

class _AddAvailibilityDialogState extends State<AddAvailibilityDialog> {
  TextEditingController groupTwentySevenController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["11/11/1111", "22/12/2222", "23/03/3333"];

  List<String> dropdownItemList2 = ["01:00", "02:00", "03:00"];

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

  bool checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: getPadding(all: 16),
                  decoration: AppDecoration.fillLightblue600.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Add Availability",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtTitilliumWebSemiBold16WhiteA700
                                .copyWith(
                                    letterSpacing:
                                        getHorizontalSize(0.16))),
                        CustomImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(24),
                            width: getSize(24),
                            onTap: () {
                              onTapImgClose(context);
                            })
                      ])),
              Padding(
                  padding: getPadding(left: 16, top: 16),
                  child: Text("Availability Details",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTitilliumWebSemiBold16
                          .copyWith(letterSpacing: getHorizontalSize(0.16)))),
              Padding(
                  padding: getPadding(left: 16, top: 16),
                  child: Text("Description",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTitilliumWebRegular12
                          .copyWith(letterSpacing: getHorizontalSize(0.12)))),
              CustomTextFormField(
                  focusNode: FocusNode(),
                  controller: groupTwentySevenController,
                  hintText: "Enter description here...",
                  margin: getMargin(left: 16, top: 8, right: 16),
                  padding: TextFormFieldPadding.PaddingT9,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  maxLines: 3),
              Padding(
                  padding: getPadding(left: 16, top: 16),
                  child: Text("Location",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTitilliumWebRegular12
                          .copyWith(letterSpacing: getHorizontalSize(0.12)))),
              CustomDropDown(
                  focusNode: FocusNode(),
                  icon: Container(
                      margin: getMargin(left: 30, right: 16),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgArrowdown)),
                  hintText: "Select your clinic’s location",
                  margin: getMargin(left: 16, top: 8, right: 16),
                  alignment: Alignment.center,
                  items: dropdownItemList,
                  onChanged: (value) {}),
              Padding(
                  padding: getPadding(left: 16, top: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Date",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtTitilliumWebRegular12.copyWith(
                                    letterSpacing: getHorizontalSize(0.12))),
                            CustomDropDown(
                                width: getHorizontalSize(130),
                                focusNode: FocusNode(),
                                hintText: "DD/MM/YYYY",
                                padding: DropDownPadding.PaddingT10_1,
                                items: dropdownItemList1,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 0, top: 12, right: 0, bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgCalendar)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(40)),
                                onChanged: (value) {}),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Time",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtTitilliumWebRegular12.copyWith(
                                    letterSpacing: getHorizontalSize(0.12))),
                            CustomDropDown(
                                width: getHorizontalSize(90),
                                focusNode: FocusNode(),
                                hintText: "00:00",
                                padding: DropDownPadding.PaddingT10_1,
                                items: dropdownItemList2,
                                prefix: Container(
                                    margin: getMargin(
                                        left: 5, top: 12, right: 5, bottom: 12),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgClockLightBlue600)),
                                prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(40)),
                                onChanged: (value) {}),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtTitilliumWebRegular12.copyWith(
                                    letterSpacing: getHorizontalSize(0.12))),
                            Container(
                                height: getVerticalSize(41),
                                width: getHorizontalSize(34),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(34),
                                              margin: getMargin(bottom: 1),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .lightBlue6000c,
                                                  borderRadius: BorderRadius.only(
                                                      bottomLeft:
                                                      Radius.circular(
                                                          getHorizontalSize(
                                                              10)),
                                                      bottomRight:
                                                      Radius.circular(
                                                          getHorizontalSize(
                                                              10))),
                                                  border: Border.all(
                                                      color: ColorConstant
                                                          .lightBlue60001,
                                                      width: getHorizontalSize(
                                                          1))))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: getVerticalSize(20),
                                              width: getHorizontalSize(34),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant
                                                      .lightBlue600,
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                          getHorizontalSize(
                                                              10)),
                                                      topRight: Radius.circular(
                                                          getHorizontalSize(
                                                              10)))))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: getPadding(top: 4),
                                              child: Text("am",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtTitilliumWebRegular12WhiteA700
                                                      .copyWith(
                                                      letterSpacing:
                                                      getHorizontalSize(
                                                          0.12))))),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding: const EdgeInsets.only(bottom: 5),
                                            child: Text("pm",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        0.12))),
                                          ))
                                    ]))
                          ],
                        )
                      ])
              ),
              Padding(
                  padding: getPadding(left: 16, top: 16),
                  child: Text("Appointment Type",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTitilliumWebRegular12
                          .copyWith(letterSpacing: getHorizontalSize(0.12)))),
              Padding(
                  padding: getPadding(left: 22, top: 8),
                  child: Row(children: [
                    Container(
                        width: getHorizontalSize(32),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getSize(32),
                                      width: getSize(32),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgGlobe,
                                                height: getSize(32),
                                                width: getSize(32),
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgHome,
                                                height: getSize(24),
                                                width: getSize(24),
                                                alignment: Alignment.center)
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Text("Home",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebRegular12Lightblue60001
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12))))
                            ])),
                    Container(
                        width: getHorizontalSize(32),
                        margin: getMargin(left: 36),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 32,
                                width: 32,
                                child: CustomIconButton(
                                    height: 32,
                                    width: 32,
                                    variant: IconButtonVariant.OutlineGray900,
                                    shape: IconButtonShape.RoundedBorder5,
                                    alignment: Alignment.center,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgTrash)),
                              ),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Text("Video",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12))))
                            ])),
                    Container(
                        width: getHorizontalSize(32),
                        margin: getMargin(left: 36),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 32,
                                width: 32,
                                child: CustomIconButton(
                                    height: 32,
                                    width: 32,
                                    variant: IconButtonVariant.OutlineGray900,
                                    shape: IconButtonShape.RoundedBorder5,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgComputer)),
                              ),
                              Padding(
                                  padding: getPadding(top: 8),
                                  child: Text("Clinic",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.12))))
                            ]))
                  ])),
              Padding(
                  padding: getPadding(left: 16, top: 16),
                  child: Text("Speciality",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTitilliumWebRegular12
                          .copyWith(letterSpacing: getHorizontalSize(0.12)))),
              CustomDropDown(
                  focusNode: FocusNode(),
                  icon: Container(
                      margin: getMargin(left: 16, right: 16),
                      child:
                          CustomImageView(svgPath: ImageConstant.imgArrowdown)),
                  hintText: "Select your speciality",
                  margin: getMargin(left: 16, top: 8, right: 16),
                  alignment: Alignment.center,
                  items: dropdownItemList3,
                  onChanged: (value) {}),
              CustomCheckbox(
                  text: "Recurring",
                  iconSize: getHorizontalSize(16),
                  value: checkbox,
                  margin: getMargin(left: 16, top: 16),
                  fontStyle: CheckboxFontStyle.TitilliumWebRegular12,
                  onChange: (value) {
                    setState(() {
                      checkbox = value;
                    });
                  }),
              CustomButton(
                  height: getVerticalSize(56),
                  text: "SAVE ",
                  margin: getMargin(left: 16, top: 25, right: 16, bottom: 16),
                  padding: ButtonPadding.PaddingAll14,
                  fontStyle: ButtonFontStyle.TitilliumWebBold16,
                  alignment: Alignment.center,
              onTap: (){onTapImgClose(context);},)
            ]));
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
