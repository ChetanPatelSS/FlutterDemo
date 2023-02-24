import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_drop_down.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/widgets/custom_phone_number.dart';
import 'package:fpp/widgets/custom_text_form_field.dart';

class AddPatientEmergencyContactsPage extends StatefulWidget {
  const AddPatientEmergencyContactsPage({Key? key, required this.onNext}) : super(key: key);

  final VoidCallback onNext;

  @override
  State<AddPatientEmergencyContactsPage> createState() => _AddPatientEmergencyContactsPageState();
}

// ignore_for_file: must_be_immutable
class _AddPatientEmergencyContactsPageState extends State<AddPatientEmergencyContactsPage> {
  TextEditingController languageController = TextEditingController();

  TextEditingController groupEightyThreeController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final double commonFormFieldTopSpace = 16;
  final double commonTopSpaceBetweenTitleAndField = 8;

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
                        "Emergency Contacts",
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "First Name",
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
                                controller: languageController,
                                hintText: "Enter first name ",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Last Name",
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
                                controller: groupEightyThreeController,
                                hintText: "Enter last name",
                                margin: getMargin(
                                  top: commonTopSpaceBetweenTitleAndField,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Relation with patient",
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
                                items: dropdownItemList,
                                onChanged: (value) {},
                              ),
                              Padding(
                                padding: getPadding(
                                  top: commonFormFieldTopSpace,
                                ),
                                child: Text(
                                  "Mobile Number",
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
                                child: CustomPhoneNumber(
                                  country: selectedCountry,
                                  controller: phoneNumberController,
                                  onTap: (Country country) {
                                    setState(() {
                                      selectedCountry = country;
                                    });
                                  },
                                ),
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




