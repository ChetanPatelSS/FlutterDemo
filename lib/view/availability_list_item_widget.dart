import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/color_constant.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AvailabilityListItemWidget extends StatelessWidget {
  const AvailabilityListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineLightblue60019012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Container(
            height: getVerticalSize(
              100,
            ),
            width: getHorizontalSize(
              10,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.lightBlue600,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(
                    5,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                all: 8
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Clinic:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtTitilliumWebSemiBold12Gray900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                          ),
                          child: Text(
                            "Frogs Clinic",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Align(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: CustomImageView(
                              svgPath: ImageConstant.imgCloseLightBlue600,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Description:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtTitilliumWebSemiBold12Gray900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                          ),
                          child: Text(
                            "Issue 1",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Specialities:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtTitilliumWebSemiBold12Gray900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                          ),
                          child: Text(
                            "Infectious Diseases",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Time:",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtTitilliumWebSemiBold12Gray900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 6,
                          ),
                          child: Text(
                            "6:00 pm",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtTitilliumWebRegular12.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.12,
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
        ],
      ),
    );
  }
}
