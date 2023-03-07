import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
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

class SetAppointmentScreen extends StatefulWidget {
  @override
  State<SetAppointmentScreen> createState() => _SetAppointmentScreenState();
}

class _SetAppointmentScreenState extends State<SetAppointmentScreen> {
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

  List<String> dropdownItemList2 = ["01:00", "02:00", "03:00"];

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

  var isAmSelected = true;
  var txtSelectedDate = "DD/MM/YYYY";
  var txtSelectedTime = "00:00";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Container(
        // padding: getPadding(
        //   left: 0,
        //   right: 0,
        // ),
        // decoration: AppDecoration.fillGray90099,
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
                        top: 25,
                      ),
                      //padding: const EdgeInsets.all(10.0),
                      decoration: AppDecoration.fillLightblue600.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 10,
                            ),
                            child: Text(
                              "Set Appointment",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtTitilliumWebSemiBold16WhiteA700
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
                            onTap: (){onTapImgClose(context);},
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
                        setState(() {
                          checkbox = value;
                        });
                      },
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(top: 15, left: 15, right: 15),
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
                        style:
                            AppStyle.txtTitilliumWebSemiBold14Gray900.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.14,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: getPadding(left: 16, top: 16, right: 16),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12.copyWith(
                                          letterSpacing: getHorizontalSize(0.12))),
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
                                    /*child: CustomDropDown(
                                        width: getHorizontalSize(130),
                                        focusNode: FocusNode(),
                                        hintText: txtSelectedDate,
                                        padding: DropDownPadding.PaddingT10_1,
                                        items: dropdownItemList1,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 0, top: 12, right: 0, bottom: 12),
                                            child: CustomImageView(
                                                svgPath: ImageConstant.imgCalendar)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(40)),
                                        onChanged: (value) {}),*/
                                    child: Container(
                                      height: 45,
                                      padding: getPadding(
                                        all: 10
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
                                          CustomImageView(
                                            svgPath: ImageConstant.imgCalendar,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 9,
                                              right: 9
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
                                            svgPath: ImageConstant.imgArrowdown,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Time",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12.copyWith(
                                          letterSpacing: getHorizontalSize(0.12))),
                                  InkWell(
                                    onTap: () async {
                                      TimeOfDay? pickedTime =  await showTimePicker(
                                        initialTime: TimeOfDay.now(),
                                        context: context,
                                      );

                                      if(pickedTime != null ){
                                        print(pickedTime.format(context));   //output 10:51 PM
                                        DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                                        //converting to DateTime so that we can further format on different pattern.
                                        print(parsedTime); //output 1970-01-01 22:53:00.000
                                        String formattedTime = DateFormat('HH:mm').format(parsedTime);
                                        print(formattedTime); //output 14:59
                                        //DateFormat() is from intl package, you can format the time on any pattern you need.

                                        setState(() {
                                          txtSelectedTime = formattedTime; //set the value of text field.
                                        });
                                      }else{
                                        print("Time is not selected");
                                      }
                                    },
                                    /*child: CustomDropDown(
                                        width: getHorizontalSize(90),
                                        focusNode: FocusNode(),
                                        hintText: "00:00",
                                        padding: DropDownPadding.PaddingT10_1,
                                        items: dropdownItemList2,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 5, top: 12, right: 5, bottom: 12),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgClockLightBlue600)),
                                        prefixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(40)),
                                        onChanged: (value) {}),*/
                                    child: Container(
                                      height: 45,
                                      padding: getPadding(
                                          all: 10
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
                                          CustomImageView(
                                            svgPath: ImageConstant.imgClockLightBlue600,
                                            height: getSize(
                                              18,
                                            ),
                                            width: getSize(
                                              18,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                                left: 9,
                                                right: 9
                                            ),
                                            child: Text(
                                              txtSelectedTime,
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
                                            svgPath: ImageConstant.imgArrowdown,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebRegular12.copyWith(
                                          letterSpacing: getHorizontalSize(0.12))),
                                  Container(
                                      height: getVerticalSize(50),
                                      width: getHorizontalSize(40),
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomCenter,
                                                child: InkWell(
                                                  onTap:(){
                                                    setState(() {
                                                      isAmSelected = false;
                                                      print("on Pm selected");
                                                    });
                                                  },
                                                  child: Container(
                                                      height: getVerticalSize(25),
                                                      width: getHorizontalSize(40),
                                                      margin: getMargin(bottom: 2),
                                                      decoration: BoxDecoration(
                                                          color: !isAmSelected ? ColorConstant
                                                              .lightBlue600 : ColorConstant.whiteA700,
                                                          borderRadius: BorderRadius.only(
                                                              bottomLeft:
                                                              Radius.circular(
                                                                  getHorizontalSize(
                                                                      10)),
                                                              bottomRight:
                                                              Radius.circular(
                                                                  getHorizontalSize(
                                                                      10))),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .lightBlue60001,
                                                              width: getHorizontalSize(
                                                                  1)))),
                                                )),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: InkWell(
                                                  onTap:(){
                                                    setState(() {
                                                      isAmSelected = true;
                                                      print("on Am selected");
                                                    });
                                                  },
                                                  child: Container(
                                                      height: getVerticalSize(25),
                                                      width: getHorizontalSize(40),
                                                      decoration: BoxDecoration(
                                                          color: isAmSelected ? ColorConstant
                                                              .lightBlue600 : ColorConstant.whiteA700,
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius.circular(
                                                                  getHorizontalSize(
                                                                      10)),
                                                              topRight: Radius.circular(
                                                                  getHorizontalSize(
                                                                      10))
                                                          ),
                                                          border: Border.all(
                                                              color: ColorConstant
                                                                  .lightBlue60001,
                                                              width: getHorizontalSize(
                                                                  1))
                                                      )),
                                                )),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: InkWell(
                                                  onTap: (){
                                                    setState(() {
                                                      isAmSelected = true;
                                                      print("on Am selected");
                                                    });
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(top: 4),
                                                      child: Text("am",
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: isAmSelected ? AppStyle
                                                              .txtTitilliumWebRegular12WhiteA700
                                                              .copyWith(
                                                              letterSpacing:
                                                              getHorizontalSize(
                                                                  0.12)) : AppStyle
                                                              .txtTitilliumWebRegular12Gray600
                                                              .copyWith(
                                                              letterSpacing:
                                                              getHorizontalSize(
                                                                  0.12)))),
                                                )),
                                            Align(
                                                alignment: Alignment.bottomCenter,
                                                child: InkWell(
                                                  onTap:(){
                                                    setState(() {
                                                      isAmSelected = false;
                                                      print("on Pm selected");
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(bottom: 5),
                                                    child: Text("pm",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: !isAmSelected ? AppStyle
                                                            .txtTitilliumWebRegular12WhiteA700
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.12)) : AppStyle
                                                            .txtTitilliumWebRegular12Gray600
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.12))),
                                                  ),
                                                ))
                                          ]))
                                ],
                              )
                            ])
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
                      onTap: (){onTapImgClose(context);},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }
}
