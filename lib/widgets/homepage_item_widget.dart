import 'package:flutter/material.dart';

import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
import 'custom_icon_button.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class HomepageItemWidget extends StatelessWidget {
  HomepageItemWidget();

  @override
  Widget build(BuildContext context) {
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
                            left: 6,
                            top: 6,
                          ),
                          child: Text(
                            "#0001",
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
                              "Rajat Sharma",
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
  }
}
