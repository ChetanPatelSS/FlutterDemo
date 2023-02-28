import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/view/availability_list_item_widget.dart';
import 'package:fpp/widgets/custom_button.dart';
import 'package:fpp/widgets/custom_drop_down.dart';
import 'package:fpp/widgets/custom_icon_button.dart';
import 'package:fpp/widgets/custom_image_view.dart';

class TabAvailabilityScreen extends StatefulWidget {
  const TabAvailabilityScreen({Key? key}) : super(key: key);

  @override
  State<TabAvailabilityScreen> createState() => _TabAvailabilityScreenState();
}

class _TabAvailabilityScreenState extends State<TabAvailabilityScreen> {
  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final DateTime _currentDate = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day) ;
  DateTime _currentDate2 = DateTime(DateTime.now().year, DateTime.now().month, 10) ;
  String _currentMonth = DateFormat.yMMMM().format(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day));
  DateTime _targetDateTime = DateTime(2023, 2, 3);


  @override
  Widget build(BuildContext context) {
    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      onDayPressed: (date, events) {
        setState(() => _currentDate2 = date);
      },
      daysHaveCircularBorder: null,
      thisMonthDayBorderColor: Colors.red,
      showOnlyCurrentMonthDate: false,
      weekFormat: false,
//      firstDayOfWeek: 4,
      //markedDatesMap: _markedDateMap,
      height: 280.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      //markedDateCustomShapeBorder: CircleBorder(side: BorderSide(color: Colors.grey)),
      //markedDateCustomTextStyle: TextStyle(fontSize: 18, color: Colors.blue,),
      showHeader: false,
      todayTextStyle: const TextStyle(color: Colors.white,),
      minSelectedDate: _currentDate.subtract(const Duration(days: 360)),
      maxSelectedDate: _currentDate.add(const Duration(days: 360)),
      selectedDayTextStyle: AppStyle.txtInterRegular16WhiteA700,
      weekendTextStyle: AppStyle.txtInterRegular16Bluegray900,
      headerTextStyle: AppStyle.txtTitilliumWebRegular12,
      weekdayTextStyle: AppStyle.txtInterRegular14,
      daysTextStyle: AppStyle.txtInterRegular16Bluegray900,
      nextDaysTextStyle: AppStyle.txtInterRegular16,
      prevDaysTextStyle: AppStyle.txtInterRegular16,
      todayButtonColor: ColorConstant.lightBlue600,
      todayBorderColor: ColorConstant.lightBlue600,
      selectedDayButtonColor: ColorConstant.lightBlue600,

      onCalendarChanged: (DateTime date) {
        setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        //print('long pressed date $date');
      },
    );

    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          body: SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: getPadding(
                  bottom: 100,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    Container(
                      margin: getMargin(
                        left: 24,
                        top: 24,
                        right: 24,
                      ),
                      padding: getPadding(
                        all: 16
                      ),
                      decoration: AppDecoration.outlineLightblue60019012.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  onTap: (){
                                    setState(() {
                                      _targetDateTime = DateTime(
                                          _targetDateTime.year, _targetDateTime.month - 1);
                                      _currentMonth =
                                          DateFormat.yMMMM().format(_targetDateTime);
                                    });
                                  },
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    34,
                                  ),
                                  width: getHorizontalSize(
                                    107,
                                  ),
                                  text: _currentMonth,
                                  margin: getMargin(
                                    left: 28,
                                    right: 28
                                  ),
                                  fontStyle: ButtonFontStyle.TitilliumWebBold12Weight400,
                                  variant: ButtonVariant.OutlineLightblue6000c,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowrightGray900,
                                  onTap: (){
                                    setState(() {
                                      _targetDateTime = DateTime(
                                          _targetDateTime.year, _targetDateTime.month + 1);
                                      _currentMonth =
                                          DateFormat.yMMMM().format(_targetDateTime);
                                    });
                                  },
                                ),
                              ],
                            ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 32.0,
                            ),
                            child: calendarCarouselNoHeader,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 20,
                        top: 24,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              25,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Fri",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtTitilliumWebSemiBold16
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 1,
                                    ),
                                    child: Text(
                                      "11",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtTitilliumWebSemiBold16
                                          .copyWith(
                                        letterSpacing: getHorizontalSize(
                                          0.16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 196,
                                  ),
                                  child: Text(
                                    "Tue",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtTitilliumWebSemiBold16
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 1,
                                    right: 2,
                                  ),
                                  child: Text(
                                    "22",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtTitilliumWebSemiBold16
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                left: 10,
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
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return const AvailabilityListItemWidget();
                                },
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Container(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: SizedBox(
            height: 45,
            child: FloatingActionButton.extended(
              onPressed: (){
                /*Navigator.push(
                    context, MaterialPageRoute(builder: (BuildContext context) =>
                const PatientAddDetailsPage()));*/
              },
              label: Text(
                "Add availability",
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
        ),
      ),
    );
  }
}
