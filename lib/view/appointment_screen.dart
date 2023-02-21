import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/app_bar/custom_app_bar.dart';
import 'package:fpp/widgets/appbar_image.dart';
import 'package:fpp/widgets/custom_bottom_bar.dart';
import 'package:fpp/widgets/custom_button.dart';
import 'package:fpp/widgets/custom_checkbox.dart';
import 'package:fpp/widgets/custom_drop_down.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/widgets/custom_text_form_field.dart';

// class AppointmentScreen extends StatefulWidget {
//   const AppointmentScreen({Key? key}) : super(key: key);

//   @override
//   State<AppointmentScreen> createState() => _AppointmentScreenState();
// }

// class _AppointmentScreenState extends State<AppointmentScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

class SetAppointmentScreen extends StatelessWidget {
  TextEditingController groupThirtyNineController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  bool checkbox = false;

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList2 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList3 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList4 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList5 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            64,
          ),
          leadingWidth: 40,
          leading: AppbarImage(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 16,
              top: 17,
              bottom: 15,
            ),
          ),
          title: AppbarImage(
            height: getVerticalSize(
              19,
            ),
            width: getHorizontalSize(
              110,
            ),
            svgPath: ImageConstant.imgGroup,
            margin: getMargin(
              left: 16,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 16,
                top: 17,
                right: 16,
                bottom: 15,
              ),
            ),
          ],
          styleType: Style.bgFillLightblue600,
        ),
        body: Form(
          key: _formKey,
          child: Container(
            padding: getPadding(
              left: 24,
              right: 24,
            ),
            decoration: AppDecoration.fillGray90099,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Container(
                    margin: getMargin(
                      bottom: 13,
                    ),
                    decoration: AppDecoration.outlineLightblue60026.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: getPadding(
                            left: 16,
                            right: 16,
                          ),
                          decoration: AppDecoration.fillLightblue600.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 13,
                                ),
                                child: Text(
                                  "Set Appointment",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtTitilliumWebSemiBold16WhiteA700
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.16,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgClose,
                                height: getVerticalSize(
                                  21,
                                ),
                                width: getHorizontalSize(
                                  24,
                                ),
                                margin: getMargin(
                                  bottom: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 15,
                          ),
                          child: Text(
                            "Patient Details",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebSemiBold16.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.16,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 14,
                          ),
                          child: Text(
                            "Patient Name",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 7,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: groupThirtyNineController,
                                    hintText: "Enter patient’s name",
                                    padding: TextFormFieldPadding.PaddingT9,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    40,
                                  ),
                                  width: getHorizontalSize(
                                    51,
                                  ),
                                  text: "+ ADD",
                                  margin: getMargin(
                                    left: 8,
                                  ),
                                  variant: ButtonVariant.OutlineLightblue60001,
                                  shape: ButtonShape.RoundedBorder10,
                                  padding: ButtonPadding.PaddingT10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 15,
                          ),
                          child: Text(
                            "Reason",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                        CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 30,
                              right: 16,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                            ),
                          ),
                          hintText: "Select a reason",
                          margin: getMargin(
                            left: 16,
                            top: 7,
                            right: 16,
                          ),
                          alignment: Alignment.center,
                          items: dropdownItemList,
                          onChanged: (value) {},
                        ),
                        CustomCheckbox(
                          text: "First Consultation",
                          iconSize: getHorizontalSize(
                            16,
                          ),
                          value: checkbox,
                          margin: getMargin(
                            left: 16,
                            top: 15,
                          ),
                          fontStyle: CheckboxFontStyle.TitilliumWebRegular12,
                          onChange: (value) {
                            checkbox = value;
                          },
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 21,
                            ),
                            child: Divider(
                              thickness: getVerticalSize(
                                1,
                              ),
                              color: ColorConstant.lightBlue600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 16,
                          ),
                          child: Text(
                            "Appointment Details",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebSemiBold14Gray900
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.14,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 12,
                            right: 119,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Date",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtTitilliumWebRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.12,
                                  ),
                                ),
                              ),
                              Text(
                                "Time",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtTitilliumWebRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 16,
                              top: 7,
                              right: 16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomDropDown(
                                  width: getHorizontalSize(
                                    129,
                                  ),
                                  focusNode: FocusNode(),
                                  hintText: "DD/MM/YYYY",
                                  margin: getMargin(
                                    bottom: 1,
                                  ),
                                  padding: DropDownPadding.PaddingT10_1,
                                  items: dropdownItemList1,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 8,
                                      top: 12,
                                      right: 8,
                                      bottom: 12,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgCalendar,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      40,
                                    ),
                                  ),
                                  onChanged: (value) {},
                                ),
                                CustomDropDown(
                                  width: getHorizontalSize(
                                    86,
                                  ),
                                  focusNode: FocusNode(),
                                  hintText: "00:00",
                                  margin: getMargin(
                                    left: 22,
                                    bottom: 1,
                                  ),
                                  padding: DropDownPadding.PaddingT10_1,
                                  items: dropdownItemList2,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 8,
                                      top: 12,
                                      right: 8,
                                      bottom: 12,
                                    ),
                                    child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgClockLightBlue600,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      40,
                                    ),
                                  ),
                                  onChanged: (value) {},
                                ),
                                Container(
                                  height: getVerticalSize(
                                    41,
                                  ),
                                  width: getHorizontalSize(
                                    34,
                                  ),
                                  margin: getMargin(
                                    left: 9,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            20,
                                          ),
                                          width: getHorizontalSize(
                                            34,
                                          ),
                                          margin: getMargin(
                                            bottom: 1,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.lightBlue6000c,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                              bottomRight: Radius.circular(
                                                getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                            ),
                                            border: Border.all(
                                              color:
                                                  ColorConstant.lightBlue60001,
                                              width: getHorizontalSize(
                                                1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            19,
                                          ),
                                          width: getHorizontalSize(
                                            34,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.lightBlue600,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                              topRight: Radius.circular(
                                                getHorizontalSize(
                                                  10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 1,
                                          ),
                                          child: Text(
                                            "am",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtTitilliumWebRegular12WhiteA700
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text(
                                          "pm",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtTitilliumWebRegular12Gray600
                                              .copyWith(
                                            letterSpacing: getHorizontalSize(
                                              0.12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 13,
                          ),
                          child: Text(
                            "Location",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                        CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 30,
                              right: 16,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                            ),
                          ),
                          hintText: "Select your clinic’s location",
                          margin: getMargin(
                            left: 16,
                            top: 7,
                            right: 16,
                          ),
                          alignment: Alignment.center,
                          items: dropdownItemList3,
                          onChanged: (value) {},
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 16,
                          ),
                          child: Text(
                            "Speciality",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                        CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 30,
                              right: 16,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                            ),
                          ),
                          hintText: "Select your speciality",
                          margin: getMargin(
                            left: 16,
                            top: 6,
                            right: 16,
                          ),
                          alignment: Alignment.center,
                          items: dropdownItemList4,
                          onChanged: (value) {},
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 16,
                          ),
                          child: Text(
                            "Appointment Type",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                        CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                            margin: getMargin(
                              left: 30,
                              right: 16,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                            ),
                          ),
                          hintText: "Select appointment type",
                          margin: getMargin(
                            left: 16,
                            top: 6,
                            right: 16,
                          ),
                          alignment: Alignment.center,
                          items: dropdownItemList5,
                          onChanged: (value) {},
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            56,
                          ),
                          text: "SAVE ",
                          margin: getMargin(
                            left: 16,
                            top: 20,
                            right: 16,
                            bottom: 16,
                          ),
                          padding: ButtonPadding.PaddingAll14,
                          fontStyle: ButtonFontStyle.TitilliumWebBold16,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            // Navigator.pushNamed(
            //     navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }
}
