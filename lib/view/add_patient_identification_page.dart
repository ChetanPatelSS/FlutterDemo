import 'package:country_pickers/country.dart';
import 'package:intl/intl.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_drop_down.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/widgets/custom_phone_number.dart';
import 'package:fpp/widgets/custom_radio_button.dart';
import 'package:fpp/widgets/custom_text_form_field.dart';

class AddPatientIdentificationPage extends StatefulWidget {
  const AddPatientIdentificationPage({Key? key, required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  State<AddPatientIdentificationPage> createState() => _AddPatientIdentificationPageState();
}

// ignore_for_file: must_be_immutable
class _AddPatientIdentificationPageState extends State<AddPatientIdentificationPage> {

  TextEditingController languageController = TextEditingController();

  TextEditingController groupFourteenController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_male", "lbl_female", "lbl_others"];

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController groupFourController = TextEditingController();

  TextEditingController groupFifteenController = TextEditingController();

  TextEditingController groupThirteenController = TextEditingController();

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  TextEditingController groupElevenController = TextEditingController();

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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final double commonFormFieldTopSpace = 18;
  final double commonTopSpaceBetweenTitleAndField = 8;
  var txtSelectedDate = "DD/MM/YYYY";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 24,
                    right: 24,
                    bottom: 36,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Patient Details",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                        AppStyle.txtTitilliumWebSemiBold14Gray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.14,
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            top: 16,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          decoration:
                          AppDecoration.outlineLightblue60026.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "Patient First Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 1,
                                      bottom: 4,
                                    ),
                                    child: Text(
                                      "*",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular10
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: languageController,
                                hintText: "Enter patient’s first name ",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Patient Last Name",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "*",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtTitilliumWebRegular10
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupFourteenController,
                                hintText: "Enter patient’s last name",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Gender",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTitilliumWebRegular12
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.12,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomRadioButton(
                                      iconSize: 18,
                                      text: "Male",
                                      value: radioList[0],
                                      groupValue: radioGroup,
                                      fontStyle:
                                      RadioFontStyle.TitilliumWebRegular12,
                                      onChange: (value) {
                                        setState(() {
                                          radioGroup = value;
                                        });
                                      },
                                    ),
                                    CustomRadioButton(
                                      iconSize: 18,
                                      text: "Female",
                                      value: radioList[1],
                                      groupValue: radioGroup,
                                      margin: getMargin(
                                        left: 36,
                                      ),
                                      fontStyle:
                                      RadioFontStyle.TitilliumWebRegular12,
                                      onChange: (value) {
                                        setState(() {
                                          radioGroup = value;
                                        });
                                      },
                                    ),
                                    CustomRadioButton(
                                      iconSize: 18,
                                      text: "Others",
                                      value: radioList[2],
                                      groupValue: radioGroup,
                                      margin: getMargin(
                                        left: 36,
                                      ),
                                      fontStyle:
                                      RadioFontStyle.TitilliumWebRegular12,
                                      onChange: (value) {
                                        setState(() {
                                          radioGroup = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Birth Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "*",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtTitilliumWebRegular10
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      //DateTime.now() - not to allow to choose before today.
                                      lastDate: DateTime(2100));

                                  if (pickedDate != null) {
                                    print(
                                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                    String formattedDate =
                                    DateFormat('dd/MM/yyyy').format(pickedDate);
                                    print(
                                        formattedDate); //formatted date output using intl package =>  2021-03-16
                                    setState(() {
                                      txtSelectedDate =
                                          formattedDate; //set output date to TextField value.
                                    });
                                  } else {}
                                },
                                child: Container(
                                  margin: getMargin(
                                    top: commonTopSpaceBetweenTitleAndField,
                                  ),
                                  padding: getPadding(
                                    left: 16,
                                    top: 11,
                                    right: 16,
                                    bottom: 11,
                                  ),
                                  decoration:
                                  AppDecoration.fillLightblue6000c.copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 4,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          txtSelectedDate,
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
                                      CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                        height: getSize(
                                          24,
                                        ),
                                        width: getSize(
                                          24,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Phone Number",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "*",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtTitilliumWebRegular10
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                child: CustomPhoneNumber(
                                  country: selectedCountry,
                                  controller: phoneNumberController,
                                  onTap: (Country country) {
                                    setState((){
                                      selectedCountry = country;
                                    });

                                  },
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Blood Type",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTitilliumWebRegular12
                                      .copyWith(
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
                                hintText: "Select patient’s blood type",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                padding: DropDownPadding.PaddingT13,
                                items: dropdownItemList,
                                onChanged: (value) {},
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Aadhar Card Number",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTitilliumWebRegular12
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.12,
                                    ),
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupFourController,
                                hintText: "0000-0000-0000",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "Address",
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
                      Container(
                        width: double.maxFinite,
                        child: Container(
                          margin: getMargin(
                            top: 16,
                          ),
                          padding: getPadding(
                            left: 16,
                            top: 16,
                            right: 16,
                            bottom: 16,
                          ),
                          decoration:
                          AppDecoration.outlineLightblue60026.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                AppStyle.txtTitilliumWebRegular12.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.12,
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupFifteenController,
                                hintText: "Building Name",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Landmark",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTitilliumWebRegular12
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.12,
                                    ),
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupThirteenController,
                                hintText: "Nearby Street Name",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "City",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        bottom: 6,
                                      ),
                                      child: Text(
                                        "*",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtTitilliumWebRegular10Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                hintText: "Select an option",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                padding: DropDownPadding.PaddingT13,
                                items: dropdownItemList1,
                                onChanged: (value) {},
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Pincode",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTitilliumWebRegular12
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.12,
                                    ),
                                  ),
                                ),
                              ),
                              CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupElevenController,
                                hintText: "Enter patient’s pincode",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.number,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "State",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "*",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtTitilliumWebRegular10Gray900
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                hintText: "Select an option",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                padding: DropDownPadding.PaddingT13,
                                items: dropdownItemList2,
                                onChanged: (value) {},
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Country",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtTitilliumWebRegular12
                                      .copyWith(
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
                                hintText: "Select an option",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                                padding: DropDownPadding.PaddingT13,
                                items: dropdownItemList3,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: widget.onNext,
                        child: Container(
                          width: double.infinity,
                          margin: getMargin(
                            top: 30,
                          ),
                          padding: getPadding(
                              all: 16
                          ),
                          decoration: AppDecoration.txtFillLightblue600.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                          ),
                          child: Text(
                            "SAVE AND NEXT",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtTitilliumWebBold16.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.8,
                              ),
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
      ),
    );
  }
}
