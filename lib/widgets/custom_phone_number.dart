import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {required this.country, required this.onTap, required this.controller});

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstant.lightBlue6000c,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  10,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 18,
                    bottom: 19,
                  ),
                  child: CountryPickerUtils.getDefaultFlagImage(
                    country,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 3,
                    top: 13,
                    bottom: 16,
                  ),
                  child: Text(
                    "+${country.phoneCode}",
                    style: AppStyle.txtTitilliumWebRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.12,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgArrowdown,
                  height: getSize(
                    8,
                  ),
                  width: getSize(
                    8,
                  ),
                  margin: getMargin(
                    left: 4,
                    top: 19,
                    right: 8,
                    bottom: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: CustomTextFormField(
            width: getHorizontalSize(
              209,
            ),
            focusNode: FocusNode(),
            controller: controller,
            hintText: "0000000000",
            margin: getMargin(
              left: 8,
            ),
            textInputType: TextInputType.phone,
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: getHorizontalSize(10),
            ),
            width: getHorizontalSize(60.0),
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: getFontSize(14)),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: getFontSize(14)),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: getFontSize(14))),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
