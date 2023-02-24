import 'package:flutter/material.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../utils/size_utils.dart';
import '../widgets/custom_radio_button.dart';

class AddPatientJobsAndEducationPage extends StatefulWidget{
  const AddPatientJobsAndEducationPage({Key? key, required this.onSubmit}) : super(key: key);

  final VoidCallback onSubmit;

  @override
  State<AddPatientJobsAndEducationPage> createState() => _AddPatientJobsAndEducationPageState();

}

// ignore_for_file: must_be_immutable
class _AddPatientJobsAndEducationPageState extends State<AddPatientJobsAndEducationPage> {
  String radioGroup = "";

  List<String> radioList = ["lbl_employed", "lbl_self_employed"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
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
                        "Patient Job",
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
                          children: [
                            CustomRadioButton(
                              iconSize: 18,
                              text: "Employed",
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
                              margin: getMargin(
                                top: 16
                              ),
                              text: "Self Employed",
                              value: radioList[1],
                              groupValue: radioGroup,
                              fontStyle: RadioFontStyle.TitilliumWebRegular12,
                              onChange: (value) {
                                setState(() {
                                  radioGroup = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      ),
                      InkWell(
                        onTap: widget.onSubmit,
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
