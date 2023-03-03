import 'package:flutter/material.dart';
import 'package:fpp/model/patient_vitals_model.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_button.dart';
import 'package:fpp/widgets/custom_icon_button.dart';
import 'package:fpp/widgets/custom_image_view.dart';
import 'package:fpp/widgets/custom_text_form_field.dart';

class PMPatientSummaryPage extends StatefulWidget {
  const PMPatientSummaryPage({Key? key}) : super(key: key);

  @override
  State<PMPatientSummaryPage> createState() => _PMPatientSummaryPageState();
}

class _PMPatientSummaryPageState extends State<PMPatientSummaryPage> {
  TextEditingController groupFortySixController = TextEditingController();

  TextEditingController groupFortyFiveController = TextEditingController();

  TextEditingController group133Controller = TextEditingController();

  TextEditingController group135Controller = TextEditingController();

  late PatientDetailsTab previousPatientDetailTab;
  late PatientDetailsTab currentPatientDetailTab;
  changeTab(PatientDetailsTab currentTab){
    setState(() {
      //previousTab = this.currentTab;
      this.currentPatientDetailTab = currentTab;
    });
  }
  checkBackStack(){
    if(previousPatientDetailTab != currentPatientDetailTab){
      setState(() {
        currentPatientDetailTab = previousPatientDetailTab;
      });
      return false;
    }else{
      return true;
    }
  }

  final patientVitalsList = [
    PatientVitalsModel("Blood\nPressure", "50/30 mmHG", ImageConstant.imgBloodpressure7),
    PatientVitalsModel("Respiratory \nRate", "85 RPM", ImageConstant.imgArrowup),
    PatientVitalsModel("Heart\nRate", "40 BPM", ImageConstant.imgAirplane),
    PatientVitalsModel("Temperature", "37C", ImageConstant.imgFrame),
    PatientVitalsModel("BMI", "21.57 kg/m2", ImageConstant.imgLocationGray900),
    PatientVitalsModel("Pain Scale", "7/10", ImageConstant.imgComputerGray900),
  ];
  var patientVitalSelectedIndex = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentPatientDetailTab = PatientDetailsTab.Identification;
    previousPatientDetailTab = currentPatientDetailTab;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 24, bottom: 100, right: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Patient Details",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtTitilliumWebSemiBold14Gray900
                                      .copyWith(
                                      letterSpacing:
                                      getHorizontalSize(0.14))),
                              Container(
                                height: 200,
                                  width: double.infinity,
                                  margin:
                                  getMargin(top: 16),
                                  padding: getPadding(top: 15, bottom: 15),
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10),
                                  child: DefaultTabController(
                                    length: 3,
                                    initialIndex: currentPatientDetailTab.index,
                                    child: SafeArea(
                                        child: Column(
                                          children: [
                                            TabBar(
                                                isScrollable: false,
                                                labelColor: ColorConstant.lightBlue600,
                                                labelStyle: TextStyle(
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Titillium Web',
                                                    fontWeight: FontWeight.w600),
                                                unselectedLabelColor:
                                                ColorConstant.gray600,
                                                unselectedLabelStyle: TextStyle(
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Titillium Web',
                                                    fontWeight: FontWeight.w600),
                                                indicatorPadding: getPadding(left: 30, right: 30),
                                                tabs: const [Tab(text: "Identification"), Tab(text: "Contact")
                                                  , Tab(text: "Job and Education")]),
                                            Expanded(
                                              child: TabBarView(
                                                children: [
                                                  Column(
                                                      children: [
                                                        Divider(
                                                            thickness: getVerticalSize(1),
                                                            color: ColorConstant.lightBlue600),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16, top: 15, right: 16),
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                      getHorizontalSize(50),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            CustomImageView(
                                                                                imagePath:
                                                                                ImageConstant
                                                                                    .imgImage13,
                                                                                height:
                                                                                getSize(50),
                                                                                width:
                                                                                getSize(50),
                                                                                radius: BorderRadius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        25))),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    left: 5,
                                                                                    top: 7),
                                                                                child: Text(
                                                                                    "#0001",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600))
                                                                          ])),
                                                                  Container(
                                                                      width:
                                                                      getHorizontalSize(97),
                                                                      margin:
                                                                      getMargin(left: 16),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            Text("Rajat Sharma",
                                                                                overflow:
                                                                                TextOverflow
                                                                                    .ellipsis,
                                                                                textAlign:
                                                                                TextAlign
                                                                                    .left,
                                                                                style: AppStyle
                                                                                    .txtTitilliumWebSemiBold12Gray900
                                                                                    .copyWith(
                                                                                    letterSpacing:
                                                                                    getHorizontalSize(0.12))),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 1),
                                                                                child: Text(
                                                                                    "Gender: Male",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 4),
                                                                                child: Text(
                                                                                    "Age: 36 years",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 2),
                                                                                child: Text(
                                                                                    "Blood Type: AB +ve",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),

                                                                          ])),
                                                                  Spacer(),
                                                                  Align(
                                                                    alignment: Alignment.topRight,
                                                                    child: SizedBox(
                                                                      height:
                                                                      getVerticalSize(34),
                                                                      width:
                                                                      getHorizontalSize(78),
                                                                      child: CustomButton(
                                                                          height:
                                                                          getVerticalSize(34),
                                                                          width:
                                                                          getHorizontalSize(78),
                                                                          text: "CONNECT",
                                                                          fontStyle: ButtonFontStyle
                                                                              .TitilliumWebBold12Weight700),
                                                                    ),
                                                                  )
                                                                ])),
                                                        Text(
                                                            "Aadhar Card Number: 0000-0000-0000 ",
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtTitilliumWebRegular12Gray600)
                                                      ]),
                                                  Column(
                                                      children: [
                                                        Divider(
                                                            thickness: getVerticalSize(1),
                                                            color: ColorConstant.lightBlue600),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16, top: 15, right: 16),
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                      getHorizontalSize(50),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            CustomImageView(
                                                                                imagePath:
                                                                                ImageConstant
                                                                                    .imgImage13,
                                                                                height:
                                                                                getSize(50),
                                                                                width:
                                                                                getSize(50),
                                                                                radius: BorderRadius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        25))),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    left: 5,
                                                                                    top: 7),
                                                                                child: Text(
                                                                                    "#0001",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600))
                                                                          ])),
                                                                  Container(
                                                                      width:
                                                                      getHorizontalSize(97),
                                                                      margin:
                                                                      getMargin(left: 16),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            Text("Rajat Sharma",
                                                                                overflow:
                                                                                TextOverflow
                                                                                    .ellipsis,
                                                                                textAlign:
                                                                                TextAlign
                                                                                    .left,
                                                                                style: AppStyle
                                                                                    .txtTitilliumWebSemiBold12Gray900
                                                                                    .copyWith(
                                                                                    letterSpacing:
                                                                                    getHorizontalSize(0.12))),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 1),
                                                                                child: Text(
                                                                                    "Gender: Male",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 4),
                                                                                child: Text(
                                                                                    "Age: 36 years",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 2),
                                                                                child: Text(
                                                                                    "Blood Type: AB +ve",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),

                                                                          ])),
                                                                  Spacer(),
                                                                  Align(
                                                                    alignment: Alignment.topRight,
                                                                    child: SizedBox(
                                                                      height:
                                                                      getVerticalSize(34),
                                                                      width:
                                                                      getHorizontalSize(78),
                                                                      child: CustomButton(
                                                                          height:
                                                                          getVerticalSize(34),
                                                                          width:
                                                                          getHorizontalSize(78),
                                                                          text: "CONNECT",
                                                                          fontStyle: ButtonFontStyle
                                                                              .TitilliumWebBold12Weight700),
                                                                    ),
                                                                  )
                                                                ])),
                                                        Text(
                                                            "Aadhar Card Number: 0000-0000-0000 ",
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtTitilliumWebRegular12Gray600)
                                                      ]),
                                                  Column(
                                                      children: [
                                                        Divider(
                                                            thickness: getVerticalSize(1),
                                                            color: ColorConstant.lightBlue600),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16, top: 15, right: 16),
                                                            child: Row(
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                      getHorizontalSize(50),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            CustomImageView(
                                                                                imagePath:
                                                                                ImageConstant
                                                                                    .imgImage13,
                                                                                height:
                                                                                getSize(50),
                                                                                width:
                                                                                getSize(50),
                                                                                radius: BorderRadius
                                                                                    .circular(
                                                                                    getHorizontalSize(
                                                                                        25))),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    left: 5,
                                                                                    top: 7),
                                                                                child: Text(
                                                                                    "#0001",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600))
                                                                          ])),
                                                                  Container(
                                                                      width:
                                                                      getHorizontalSize(97),
                                                                      margin:
                                                                      getMargin(left: 16),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            Text("Rajat Sharma",
                                                                                overflow:
                                                                                TextOverflow
                                                                                    .ellipsis,
                                                                                textAlign:
                                                                                TextAlign
                                                                                    .left,
                                                                                style: AppStyle
                                                                                    .txtTitilliumWebSemiBold12Gray900
                                                                                    .copyWith(
                                                                                    letterSpacing:
                                                                                    getHorizontalSize(0.12))),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 1),
                                                                                child: Text(
                                                                                    "Gender: Male",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 4),
                                                                                child: Text(
                                                                                    "Age: 36 years",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),
                                                                            Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                    top: 2),
                                                                                child: Text(
                                                                                    "Blood Type: AB +ve",
                                                                                    overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                    textAlign:
                                                                                    TextAlign
                                                                                        .left,
                                                                                    style: AppStyle
                                                                                        .txtTitilliumWebRegular12Gray600)),

                                                                          ])),
                                                                  Spacer(),
                                                                  Align(
                                                                    alignment: Alignment.topRight,
                                                                    child: SizedBox(
                                                                      height:
                                                                      getVerticalSize(34),
                                                                      width:
                                                                      getHorizontalSize(78),
                                                                      child: CustomButton(
                                                                          height:
                                                                          getVerticalSize(34),
                                                                          width:
                                                                          getHorizontalSize(78),
                                                                          text: "CONNECT",
                                                                          fontStyle: ButtonFontStyle
                                                                              .TitilliumWebBold12Weight700),
                                                                    ),
                                                                  )
                                                                ])),
                                                        Text(
                                                            "Aadhar Card Number: 0000-0000-0000 ",
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style: AppStyle
                                                                .txtTitilliumWebRegular12Gray600)
                                                      ]),
                                                ],
                                              ),
                                            )
                                          ],
                                        )),
                                  )),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Patient  Vitals",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              Container(
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10),
                                  margin: getMargin(
                                      top: 16),
                                  padding: getPadding(all: 11),
                                  child: GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          mainAxisSpacing:
                                          getHorizontalSize(11),
                                          crossAxisSpacing:
                                          getHorizontalSize(11)),
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: patientVitalsList.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: patientVitalSelectedIndex == index ? AppDecoration.fillRed400.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder5,
                                          ) : AppDecoration.fillLightblue6001901.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder5,
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                patientVitalsList[index].title,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: patientVitalSelectedIndex == index ? AppStyle.txtTitilliumWebRegular12WhiteA700.copyWith(
                                                  letterSpacing: getHorizontalSize(
                                                    0.12,
                                                  ),
                                                ) : AppStyle.txtTitilliumWebRegular12Gray900.copyWith(
                                                  letterSpacing: getHorizontalSize(
                                                    0.12,
                                                  ),
                                                ),
                                              ),
                                              patientVitalsList[index].imgPath.contains(".svg") ?
                                              CustomImageView(
                                                svgPath: patientVitalsList[index].imgPath,
                                                color: patientVitalSelectedIndex == index ? ColorConstant.whiteA700 : ColorConstant.gray900,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                margin: getMargin(
                                                    top: 8,
                                                    bottom: 8
                                                ),
                                              ) :
                                              CustomImageView(
                                                imagePath: patientVitalsList[index].imgPath,
                                                color: patientVitalSelectedIndex == index ? ColorConstant.whiteA700 : ColorConstant.gray900,
                                                height: getSize(
                                                  24,
                                                ),
                                                width: getSize(
                                                  24,
                                                ),
                                                margin: getMargin(
                                                    top: 8,
                                                    bottom: 8
                                                ),
                                              ),
                                              Text(
                                                patientVitalsList[index].subtitle,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: patientVitalSelectedIndex == index ? AppStyle.txtTitilliumWebRegular12WhiteA700 : AppStyle.txtTitilliumWebRegular12,
                                              ),
                                            ],
                                          ),
                                        );
                                      })),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Timeline",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              Container(
                                  margin:
                                  getMargin(top: 16),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationLightBlue600,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(
                                                      top: 9, bottom: 9)),
                                              CustomButton(
                                                  height: getVerticalSize(34),
                                                  width: getHorizontalSize(60),
                                                  text: "2023",
                                                  fontStyle: ButtonFontStyle.TitilliumWebBold12Weight400,
                                                  margin: getMargin(left: 8),
                                                  variant: ButtonVariant
                                                      .OutlineLightblue6000c),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightLightBlue600,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(
                                                      left: 8,
                                                      top: 9,
                                                      bottom: 9))
                                            ]),
                                        Container(
                                            height: getVerticalSize(12),
                                            width: getHorizontalSize(280),
                                            margin:
                                            getMargin(top: 18, bottom: 10),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 0),
                                                          child: SizedBox(
                                                              width:
                                                              getHorizontalSize(
                                                                  280),
                                                              child: Divider(
                                                                  thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                                  color: ColorConstant
                                                                      .lightBlue600)))),
                                                  Align(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 11,
                                                              right: 114),
                                                          child: Row(children: [
                                                            Container(
                                                                height:
                                                                getSize(12),
                                                                width:
                                                                getSize(12),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .lightBlue600,
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(6)))),
                                                            Container(
                                                                height:
                                                                getSize(12),
                                                                width:
                                                                getSize(12),
                                                                margin:
                                                                getMargin(
                                                                    left:
                                                                    25),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .lightBlue600,
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(6)))),
                                                            Spacer(),
                                                            Container(
                                                                height:
                                                                getSize(12),
                                                                width:
                                                                getSize(12),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .lightBlue600,
                                                                    borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(6))))
                                                          ])))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Notes",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: groupFortySixController,
                                  hintText: "Type notes here",
                                  margin: getMargin(top: 8),
                                  variant: TextFormFieldVariant
                                      .OutlineLightblue60026,
                                  padding: TextFormFieldPadding.PaddingAll16),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Consultation",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10,),
                                  child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                child: Text(
                                                    "Next \nAppointment",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtTitilliumWebRegular12Gray900)),
                                            SizedBox(
                                                width: getHorizontalSize(81),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                                  child: Divider(
                                                      thickness:
                                                      getVerticalSize(1),
                                                      color: ColorConstant
                                                          .lightBlue600),
                                                )),
                                            Container(
                                                child: Text(
                                                    "Last \nAppointment",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: AppStyle
                                                        .txtTitilliumWebRegular12Gray900)),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 22,
                                        ),
                                        Column(
                                          children: [
                                            Text("\n--",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600),
                                            SizedBox(
                                                width: getHorizontalSize(81),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                                  child: Divider(
                                                      thickness:
                                                      getVerticalSize(1),
                                                      color: ColorConstant
                                                          .lightBlue600),
                                                )),
                                            Text(
                                                "2023 - 02 - 06",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600)
                                          ],
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                            height: 24,
                                            width: 24,
                                            child: CustomIconButton(
                                                height: 24,
                                                width: 24,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright)),
                                          ),
                                        )
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Medication",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder10,),
                                  child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                child: Text(
                                                    "Diclofenac\n(50mg)",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtTitilliumWebRegular12Gray900)),
                                            SizedBox(
                                                width: getHorizontalSize(81),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                                  child: Divider(
                                                      thickness:
                                                      getVerticalSize(1),
                                                      color: ColorConstant
                                                          .lightBlue600),
                                                )),
                                            Container(
                                                child: Text(
                                                    "Paracetamol \n(350mg)-\n[“OTC”, H]",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: AppStyle
                                                        .txtTitilliumWebRegular12Gray900)),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 22,
                                        ),
                                        Column(
                                          children: [
                                            Text("\n2023 - 02 - 06",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600),
                                            SizedBox(
                                                width: getHorizontalSize(81),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                                  child: Divider(
                                                      thickness:
                                                      getVerticalSize(1),
                                                      color: ColorConstant
                                                          .lightBlue600),
                                                )),
                                            Text(
                                                "\n2023 - 02 - 06",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600)
                                          ],
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                            height: 24,
                                            width: 24,
                                            child: CustomIconButton(
                                                height: 24,
                                                width: 24,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright)),
                                          ),
                                        )
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Drug Interactions",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: groupFortyFiveController,
                                  hintText:
                                  "The patient has no drug interaction",
                                  margin: getMargin(top: 8),
                                  variant: TextFormFieldVariant
                                      .OutlineLightblue60026,
                                  padding: TextFormFieldPadding.PaddingAll16),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Major Diseases",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder10,),
                                  child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                child: Text(
                                                    "Cholera",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtTitilliumWebRegular12Gray900)),
                                            SizedBox(
                                                width: getHorizontalSize(81),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                                  child: Divider(
                                                      thickness:
                                                      getVerticalSize(1),
                                                      color: ColorConstant
                                                          .lightBlue600),
                                                )),
                                            Container(
                                                child: Text(
                                                    "Mild Fever",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.left,
                                                    style: AppStyle
                                                        .txtTitilliumWebRegular12Gray900)),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 22,
                                        ),
                                        Column(
                                          children: [
                                            Text("2023 - 02 - 06",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600),
                                            SizedBox(
                                                width: getHorizontalSize(81),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                                  child: Divider(
                                                      thickness:
                                                      getVerticalSize(1),
                                                      color: ColorConstant
                                                          .lightBlue600),
                                                )),
                                            Text(
                                                "2023 - 02 - 06",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                TextAlign.left,
                                                style: AppStyle
                                                    .txtTitilliumWebRegular12Gray600)
                                          ],
                                        ),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                            height: 24,
                                            width: 24,
                                            child: CustomIconButton(
                                                height: 24,
                                                width: 24,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright)),
                                          ),
                                        )
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("Active Allergies",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtTitilliumWebSemiBold14Gray900
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(0.14)))),
                              Container(
                                  margin: getMargin(top: 16),
                                  padding: getPadding(
                                      all: 16),
                                  decoration: AppDecoration
                                      .outlineLightblue60026
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder10),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(33),
                                            width: getHorizontalSize(136),
                                            margin: getMargin(top: 1),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.bottomLeft,
                                                      child: Text(
                                                          "Acute Mucosite",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtTitilliumWebRegular10Gray600)),
                                                  Align(
                                                      alignment:
                                                      Alignment.topLeft,
                                                      child: Text(
                                                          "Testosterone and Estrogen",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtTitilliumWebRegular12))
                                                ])),
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            height: 24,
                                            width: 24,
                                            child: CustomIconButton(
                                                height: 24,
                                                width: 24,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright)),
                                          ),
                                        )
                                      ]))
                            ]))))));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}

enum PatientDetailsTab { Identification, Contacts, JobAndEducation; }