import 'package:flutter/material.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/view/pm_patient_summary.dart';
import 'package:fpp/widgets/app_bar/appbar_image.dart';
import 'package:fpp/widgets/app_bar/appbar_title.dart';
import 'package:fpp/widgets/app_bar/custom_app_bar.dart';

class PatientManagementPage extends StatefulWidget {
  final PatientManagementTab initTab;
  const PatientManagementPage({Key? key, required this.initTab}) : super(key: key);

  @override
  State<PatientManagementPage> createState() => _PatientManagementPageState();
}

class _PatientManagementPageState extends State<PatientManagementPage> {

  late PatientManagementTab previousTab;
  late PatientManagementTab currentTab;
  changeTab(PatientManagementTab currentTab){
    setState(() {
      //previousTab = this.currentTab;
      this.currentTab = currentTab;
    });
  }
  checkBackStack(){
    if(previousTab != currentTab){
      setState(() {
        currentTab = previousTab;
      });
      return false;
    }else{
      return true;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTab = widget.initTab;
    previousTab = currentTab;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleftBlack900,
                    margin: getMargin(left: 16, bottom: 2),
                    onTap: () => onTapArrowleft2(context)),
                title: AppbarTitle(
                    text: "Patient Management", margin: getMargin(left: 8)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCalendarGray900,
                      margin: getMargin(left: 16, right: 2)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCut,
                      margin: getMargin(left: 24, right: 18))
                ]),
            body: DefaultTabController(
              length: 4,
              initialIndex: currentTab.index,
              child: SafeArea(
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                          labelColor: ColorConstant.whiteA700,
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
                          indicatorPadding: getPadding(all: 8),
                          indicator: BoxDecoration(
                              color: ColorConstant.lightBlue600,
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
                          tabs: const [Tab(text: "Patient Summary"), Tab(text: "Problems")
                            , Tab(text: "Consultations"), Tab(text: "Medication")]),
                       Expanded(
                        child: TabBarView(
                          children: [
                            PMPatientSummaryPage(),
                            PMPatientSummaryPage(),
                            PMPatientSummaryPage(),
                            PMPatientSummaryPage(),
                          ],
                        ),
                      )
                    ],
                  )),
            ),));
  }

  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}



enum PatientManagementTab { PatientSummary, Problems, Consultations, Medication; }
