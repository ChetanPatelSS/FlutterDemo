import 'package:flutter/material.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/Constants/colorsConstant.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_image_view.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgCalendar,
      title: "Appointment",
      type: BottomBarEnum.Appointment,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      title: "Patient",
      type: BottomBarEnum.Patient,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserGray900,
      title: "Profile",
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsConstant.whiteA700,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              30,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              30,
            ),
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.lightBlue60026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              -2,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  color: ColorConstant.gray900,
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 7,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTitilliumWebRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.12,
                      ),
                      color: ColorConstant.gray900,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].icon,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  color: ColorConstant.lightBlue600,
                  radius: BorderRadius.only(
                    topLeft: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                    topRight: Radius.circular(
                      getHorizontalSize(
                        30,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        AppStyle.txtTitilliumWebRegular12Lightblue600.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.12,
                      ),
                      color: ColorConstant.lightBlue600,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          onChanged!(bottomMenuList[index].type);
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Appointment,
  Patient,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
