import 'package:flutter/material.dart';
import 'package:fpp/widgets/custom_icon_button.dart';
import '../widgets/custom_drop_down.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../utils/color_constant.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import '../view/patient_list_item_widget.dart';
import '../widgets/app_bar/appbar_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_image_view.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key}) : super(key: key);

  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
  TextEditingController groupSeventyFourController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  List<String> dropdownItemList1 = ["One", "Two", "Three"];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                //styleType: Style.bgFillLightblue600,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 16, top: 15, bottom: 16),
                    onTap: () => onTapArrowleft(context)),
                title: AppbarTitle(text: "Patient", margin: getMargin(left: 8)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotificationBlack900,
                      margin:
                      getMargin(left: 22, top: 15, right: 22, bottom: 16))
                ]),
            body: SingleChildScrollView(
              child: Container(
                  padding: getPadding(left: 24, right: 24),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                  Container(
                    margin: getMargin(top: 12),
                    width: double.infinity,
                    decoration: AppDecoration.outlineLightblue60019011
                        .copyWith(
                        borderRadius:
                        BorderRadiusStyle.roundedBorder10,
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.lightBlue6001901.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],),

                    child: TextFormField(
                      controller: searchController,
                    decoration: InputDecoration(
                      //filled: true,
                        prefixIcon: IconButton(
                          onPressed: () {
                            //print('search button pressed');
                          },
                          icon: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                              height: getSize(16),
                              width: getSize(16),
                              ),
                        ),
                        suffixIcon: Container(
                          width: 34,
                          child: Row(
                            children: [
                              Padding(
                                  padding: getPadding(top: 1, bottom: 1, right: 10),
                                  child: SizedBox(
                                      width: getHorizontalSize(1),
                                      child: Divider(
                                          thickness: getVerticalSize(18),
                                          color: ColorConstant.gray300))),
                              CustomImageView(
                                  svgPath: ImageConstant.imgMicrophone,
                                  height: getSize(16),
                                  width: getSize(16),
                                  margin: getMargin(top: 2, bottom: 2)),
                            ],
                          ),
                        ),
                    hintText: 'Search patient by name, mobile number',
                    hintStyle: AppStyle
                        .txtTitilliumWebRegular12Gray600,
                    border: InputBorder.none),
                      textInputAction: TextInputAction.done,
                      textAlign: TextAlign.left,
                      textAlignVertical: TextAlignVertical.center,
                    ),
                  ),
                        Padding(
                            padding: getPadding(top: 22, right: 4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1, bottom: 7),
                                      child: Text("Patients",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtTitilliumWebSemiBold16
                                              .copyWith(
                                              letterSpacing:
                                              getHorizontalSize(0.16)))),
                                  const Spacer(),
                                  DecoratedBox(
                                      /*decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                ColorConstant.gray300,
                                                ColorConstant.gray300,
                                                ColorConstant.gray300
                                                //add more colors
                                              ]),
                                          borderRadius: BorderRadius.circular(5),
                                          boxShadow: const <BoxShadow>[
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                                                blurRadius: 5) //blur radius of shadow
                                          ]
                                      ),*/
                                    decoration: AppDecoration.outlineLightblue60019011
                                        .copyWith(
                                      borderRadius:
                                      BorderRadiusStyle.roundedBorder5,
                                        boxShadow: [
                                          BoxShadow(
                                            color: ColorConstant.lightBlue6001901.withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0, 1), // changes position of shadow
                                          ),
                                        ]),

                                    child: Container(
                                      height: 34,
                                      child: CustomDropDown(
                                          width: getHorizontalSize(55),
                                          focusNode: FocusNode(),
                                          hintText: "Filter",
                                          fontStyle: DropDownFontStyle.TitilliumWeb12Black,
                                          padding: DropDownPadding.PaddingT8,
                                          items: dropdownItemList1,

                                          icon: CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            color: ColorConstant.black900,
                                          ),
                                          variant: DropDownVariant.OutlineLightblue6001901,
                                          onChanged: (value) {}),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(left: 8),
                                    child: DecoratedBox(
                                      decoration: AppDecoration.outlineLightblue60019011
                                          .copyWith(
                                          borderRadius:
                                          BorderRadiusStyle.roundedBorder5,
                                          boxShadow: [
                                            BoxShadow(
                                              color: ColorConstant.lightBlue6001901.withOpacity(0.1),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(0, 1), // changes position of shadow
                                            ),
                                          ]),
                                      child: Container(
                                        height: 34,
                                        child: CustomDropDown(
                                            width: getHorizontalSize(55),
                                            focusNode: FocusNode(),
                                            hintText: "Sort",
                                            fontStyle: DropDownFontStyle.TitilliumWeb12Black,
                                            padding: DropDownPadding.PaddingT8,
                                            items: dropdownItemList1,

                                            icon: CustomImageView(
                                              svgPath: ImageConstant.imgSort,
                                            ),
                                            variant: DropDownVariant.OutlineLightblue6001901,
                                            onChanged: (value) {}),
                                      ),
                                    ),
                                  ),
                                ])),
                        Padding(
                            padding: getPadding(top: 8, bottom: 100),
                            child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return SizedBox(height: getVerticalSize(16));
                                },
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return PatientListItemWidget();
                                }))
                      ])),
            ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Container(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: SizedBox(
            height: 45,
            child: FloatingActionButton.extended(
              onPressed: (){},
              label: Text(
              "Add Patient",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtTitilliumWebSemiBold14WhiteA700,
            ),
              extendedPadding: const EdgeInsets.all(10),
            icon: SizedBox(
              height: 24,
              width: 24,
              child: CustomIconButton(
                height: 24,
                width: 24,
                padding: IconButtonPadding.PaddingAll0,
                variant: IconButtonVariant.FillWhite,
                child: CustomImageView(
                  svgPath: ImageConstant.imgPlusLightBlue600
                ),
              ),
            ),),
          ),
        ),));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
