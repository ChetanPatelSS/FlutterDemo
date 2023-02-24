import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/Constants/colorsConstant.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_button.dart';
import 'package:fpp/widgets/custom_drop_down.dart';
import 'package:fpp/widgets/custom_icon_button.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import '../widgets/homepage_item_widget.dart';

class TabAppointmentScreenView extends StatefulWidget {
  const TabAppointmentScreenView({Key? key}) : super(key: key);

  @override
  TabAppointmentScreenState createState() => TabAppointmentScreenState();
}

class TabAppointmentScreenState extends State<TabAppointmentScreenView>{

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  CurrentAppointmentTab currentAppointmentTab = CurrentAppointmentTab.Upcoming;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child : Scaffold(
            backgroundColor: ColorsConstant.gray50,
            body: Container(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children :[
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
                            hintText: "Select Location",
                            margin: getMargin(
                              left: 24,
                              top: 23,
                              right: 24,
                            ),
                            variant: DropDownVariant.OutlineLightblue6001901,
                            padding: DropDownPadding.PaddingT11,
                            items: dropdownItemList,
                            prefix: Container(
                              margin: getMargin(
                                left: 16,
                                top: 13,
                                right: 8,
                                bottom: 13,
                              ),
                              child: CustomImageView(
                                svgPath: ImageConstant.imgLocation,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                42,
                              ),
                            ),
                            onChanged: (value) {},
                          ),
                          Padding(
                            padding: getPadding(
                              left: 24,
                              top: 24,
                              right: 24,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                    padding: getPadding(
                                      left: 0,
                                      top: 15,
                                      right: 0,
                                      bottom: 15,
                                    ),
                                    decoration: AppDecoration.outlineTeal9000c.copyWith(
                                      borderRadius: BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          margin: getMargin(
                                            top: 1,
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "2",
                                                overflow: TextOverflow.clip,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtTitilliumWebSemiBold16,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 7,
                                                ),
                                                child: Text(
                                                  "Today",
                                                  overflow: TextOverflow.clip,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle.txtTitilliumWebRegular12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 11,
                                            bottom: 11,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                            child: Divider(
                                              thickness: getVerticalSize(
                                                30,
                                              ),
                                              color: ColorConstant.lightBlue60033,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 5,
                                            top: 1,
                                            bottom: 1,
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 7,
                                                ),
                                                child: Text(
                                                  "6",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtTitilliumWebSemiBold16,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 6,
                                                ),
                                                child: Text(
                                                  "Total",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtTitilliumWebRegular12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 11,
                                            bottom: 11,
                                          ),
                                          child: SizedBox(
                                            width: getHorizontalSize(
                                              1,
                                            ),
                                            child: Divider(
                                              thickness: getVerticalSize(
                                                30,
                                              ),
                                              color: ColorConstant.lightBlue60033,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: getMargin(
                                            left: 5,
                                            top: 1,
                                            bottom: 1,
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "1",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtTitilliumWebSemiBold16,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 6,
                                                ),
                                                child: Text(
                                                  "Cancelled",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtTitilliumWebRegular12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(
                                    left: 15,
                                    top: 1,
                                  ),
                                  color: ColorConstant.lightBlue60033,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: ColorConstant.lightBlue600,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        20,
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      84,
                                    ),
                                    width: getHorizontalSize(
                                      67,
                                    ),
                                    padding: getPadding(
                                      left: 21,
                                      top: 30,
                                      right: 21,
                                      bottom: 30,
                                    ),
                                    decoration: AppDecoration.outlineLightblue600.copyWith(
                                      borderRadius: BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Stack(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgPlus,
                                          height: getSize(
                                            24,
                                          ),
                                          width: getSize(
                                            24,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 30  ,
                                top: 24,
                              ),
                              child: Text(
                                "Appointments",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtTitilliumWebSemiBold16.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: getMargin(
                              left: 24,
                              top: 9,
                              bottom: 98,
                              right: 24,
                            ),
                            padding: getPadding(
                              all: 16,
                            ),
                            decoration: AppDecoration.outlineLightblue60026.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: getPadding(
                                        left: 4,
                                        top: 6,
                                        right: 4,
                                        bottom: 6,
                                      ),
                                      decoration:
                                      AppDecoration.outlineLightblue6001901.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        children: [
                                          CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              84,
                                            ),
                                            text: "Upcoming",
                                            variant: currentAppointmentTab == CurrentAppointmentTab.Upcoming ? ButtonVariant.OutlineTeal90019 : ButtonVariant.Unselected,
                                            fontStyle:
                                            currentAppointmentTab == CurrentAppointmentTab.Upcoming ? ButtonFontStyle.TitilliumWebSemiBold12 : ButtonFontStyle.None,
                                            onTap: () {
                                              setState(() {
                                                currentAppointmentTab = CurrentAppointmentTab.Upcoming;
                                              });
                                            },

                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              34,
                                            ),
                                            text: "Past",
                                            variant: currentAppointmentTab == CurrentAppointmentTab.Past ? ButtonVariant.OutlineTeal90019 : ButtonVariant.Unselected,
                                            fontStyle:
                                            currentAppointmentTab == CurrentAppointmentTab.Past ? ButtonFontStyle.TitilliumWebSemiBold12 : ButtonFontStyle.None,
                                            onTap: (){
                                              setState(() {
                                                currentAppointmentTab = CurrentAppointmentTab.Past;
                                              });
                                            },
                                          ),
                                          CustomButton(
                                            height: getVerticalSize(
                                              34,
                                            ),
                                            width: getHorizontalSize(
                                              34,
                                            ),
                                            text: "Cancelled",
                                            variant: currentAppointmentTab == CurrentAppointmentTab.Cancelled ? ButtonVariant.OutlineTeal90019 : ButtonVariant.Unselected,
                                            fontStyle:
                                            currentAppointmentTab == CurrentAppointmentTab.Cancelled ? ButtonFontStyle.TitilliumWebSemiBold12 : ButtonFontStyle.None,
                                            onTap: (){
                                              setState(() {
                                                currentAppointmentTab = CurrentAppointmentTab.Cancelled;
                                              });
                                            },
                                          ),

                                        ],
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 46,
                                      width: 44,
                                      margin: getMargin(
                                        left: 8,
                                      ),
                                      variant: IconButtonVariant.FillLightblue6000c,
                                      shape: IconButtonShape.RoundedBorder8,
                                      padding: IconButtonPadding.PaddingAll10,
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 24,
                                    bottom: 24,
                                  ),
                                  child: Text(
                                    "Today",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtTitilliumWebSemiBold12Gray900.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.12,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 14,
                                    bottom: 14,
                                  ),
                                  child: ListView.separated(
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: getVerticalSize(
                                          16,
                                        ),
                                      );
                                    },
                                    itemCount: dropdownItemList.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        width: double.maxFinite,
                                        child: Container(
                                          padding: getPadding(
                                            left: 16,
                                            top: 14,
                                            right: 16,
                                            bottom: 14,
                                          ),
                                          decoration: AppDecoration.fillLightblue6000c.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder10,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        bottom: 10,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath: ImageConstant.imgImage13,
                                                            height: getSize(
                                                              50,
                                                            ),
                                                            width: getSize(
                                                              50,
                                                            ),
                                                            radius: BorderRadius.circular(
                                                              getHorizontalSize(
                                                                25,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              left: 2,
                                                              top: 6,
                                                            ),
                                                            child: Text(
                                                              dropdownItemList[index],
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtTitilliumWebRegular12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Row(

                                                          children: [
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 6,
                                                                left: 10,
                                                              ),
                                                              child: Text(
                                                                "Rajat Sharma ",
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

                                                          ],
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 10,
                                                            top: 3,
                                                          ),
                                                          child: Text(
                                                            "Gender: Male",
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtTitilliumWebRegular12,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 10,
                                                            top: 3,
                                                          ),
                                                          child: Text(
                                                            "Age: 36 years",
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtTitilliumWebRegular12,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 10,
                                                            top: 3,
                                                          ),
                                                          child: Text(
                                                            "Mobile: +91 9876543210",
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle.txtTitilliumWebRegular12,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    CustomIconButton(
                                                      height: 30,
                                                      width: 30,
                                                      // margin: getMargin(
                                                      //   bottom: 5,
                                                      // ),
                                                      child: CustomImageView(
                                                        svgPath: ImageConstant.imgArrowright,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: getMargin(
                                                  top: 15,
                                                ),
                                                padding: getPadding(
                                                  left: 14,
                                                  top: 6,
                                                  right: 14,
                                                  bottom: 6,
                                                ),
                                                decoration: AppDecoration.outlineLightblue60019011.copyWith(
                                                  borderRadius: BorderRadiusStyle.roundedBorder5,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      height: getSize(
                                                        16,
                                                      ),
                                                      width: getSize(
                                                        16,
                                                      ),
                                                      margin: getMargin(
                                                        top: 2,
                                                        bottom: 2,
                                                      ),
                                                      child: Stack(
                                                        alignment: Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            svgPath: ImageConstant.imgClock,
                                                            height: getSize(
                                                              16,
                                                            ),
                                                            width: getSize(
                                                              16,
                                                            ),
                                                            alignment: Alignment.center,
                                                          ),
                                                          CustomImageView(
                                                            svgPath: ImageConstant.imgClock,
                                                            height: getSize(
                                                              16,
                                                            ),
                                                            width: getSize(
                                                              16,
                                                            ),
                                                            alignment: Alignment.center,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 8,
                                                        top: 2,
                                                      ),
                                                      child: Text(
                                                        "Monday",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtTitilliumWebRegular12,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 24,
                                                        top: 1,
                                                        bottom: 1,
                                                      ),
                                                      child: Text(
                                                        "23 Feb 2023",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtTitilliumWebRegular12,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 24,
                                                        top: 2,
                                                      ),
                                                      child: Text(
                                                        "4.30 pm",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle.txtTitilliumWebRegular12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                      // return HomepageItemWidget();
                                    },
                                  ),

                                ),
                              ],
                            ),
                          ),
                        ]
                    )
                )
            )
        ));
  }

}
enum CurrentAppointmentTab { Upcoming, Past, Cancelled }