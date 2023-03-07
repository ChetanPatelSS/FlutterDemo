import 'package:flutter/material.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/view/add_patient_emergency_contacts_page.dart';
import 'package:fpp/view/add_patient_identification_page.dart';
import 'package:fpp/view/add_patient_jobs_and_education_page.dart';
import 'package:fpp/widgets/app_bar/appbar_image.dart';
import 'package:fpp/widgets/app_bar/appbar_title.dart';
import 'package:fpp/widgets/app_bar/custom_app_bar.dart';

class PatientAddDetailsPage extends StatefulWidget {
  const PatientAddDetailsPage({Key? key}) : super(key: key);

  @override
  State<PatientAddDetailsPage> createState() => _PatientAddDetailsPageState();
}

class _PatientAddDetailsPageState extends State<PatientAddDetailsPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.animateTo(0);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 16),
                    onTap: () => onTapArrowleft1(context)),
                title: AppbarTitle(
                    text: "Add Patient", margin: getMargin(left: 8)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotificationBlack900,
                      margin: getMargin(left: 22, right: 22))
                ]),
            body: SizedBox(
                width: size.width,
                child: Padding(
                    padding: getPadding(top: 12, bottom: 100),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(left: 24, right: 24),
                            child: Container(
                                height: getVerticalSize(50),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: ColorConstant.lightBlue6001901,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(10)),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                          ColorConstant.lightBlue6001901,
                                          spreadRadius: getHorizontalSize(2),
                                          blurRadius: getHorizontalSize(2),
                                          offset: const Offset(0, 1))
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8, right: 8),
                                  child: TabBar(
                                    labelPadding: EdgeInsets.zero,
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
                                      indicatorPadding: getPadding(top: 8, bottom: 8),
                                      indicator: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(5)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.teal90019,
                                                spreadRadius:
                                                getHorizontalSize(2),
                                                blurRadius:
                                                getHorizontalSize(2),
                                                offset: const Offset(0, 0))
                                          ]),
                                      controller: _tabController,
                                      tabs: const [
                                        Tab(
                                            child: Text("Identification ",
                                                overflow:
                                                TextOverflow.ellipsis)),
                                        Tab(
                                            child: Text("Emergency Contact",
                                                overflow:
                                                TextOverflow.ellipsis)),
                                        Tab(
                                            child: Text("Job ",
                                                overflow:
                                                TextOverflow.ellipsis))
                                      ]),
                                )),
                          ),
                          Expanded(
                            child: TabBarView(controller: _tabController,children: [
                              AddPatientIdentificationPage(
                                  onNext: () => _tabController.index = 1
                              ),
                              AddPatientEmergencyContactsPage(
                                  onNext: () => _tabController.index = 2
                              ),
                              AddPatientJobsAndEducationPage(
                                  onSubmit: () => onTapArrowleft1(context)
                              )
                            ],),
                          )
                        ])))
        ));
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
