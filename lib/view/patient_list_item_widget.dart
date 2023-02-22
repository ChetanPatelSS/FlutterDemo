import 'package:flutter/material.dart';
import 'package:fpp/theme/app_decoration.dart';
import 'package:fpp/theme/app_style.dart';
import 'package:fpp/utils/image_constant.dart';
import 'package:fpp/utils/size_utils.dart';
import 'package:fpp/widgets/custom_icon_button.dart';
import 'package:fpp/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class PatientListItemWidget extends StatelessWidget {
  PatientListItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 15,
        right: 16,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineLightblue6000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: getSize(
              50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: CustomImageView(
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
                ),
                Center(
                  child: Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      "#0001",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtTitilliumWebRegular12Gray600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              131,
            ),
            margin: getMargin(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Rajat Sharma",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtTitilliumWebSemiBold14Gray900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.14,
                    ),
                  ),
                ),
                Padding (
                  padding: getPadding(
                    left: 1,
                    top: 4
                  ),
                  child: Text(
                    "Gender: Male",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTitilliumWebRegular12Gray600,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 4,
                  ),
                  child: Text(
                    "Age: 36 years",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTitilliumWebRegular12Gray600,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 4,
                  ),
                  child: Text(
                    "Mobile: +91 9876543210",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtTitilliumWebRegular12Gray600,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 24,
              width: 24,
              child: CustomIconButton(
                height: 24,
                width: 24,
                padding: IconButtonPadding.PaddingAll0,
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowright,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
