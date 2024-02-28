import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import '../models/workoutcomponent_item_model.dart';

// ignore: must_be_immutable
class WorkoutcomponentItemWidget extends StatelessWidget {
  WorkoutcomponentItemWidget(
    this.workoutcomponentItemModelObj, {
    Key? key,
    this.onTapImgImage,
  }) : super(
          key: key,
        );

  WorkoutcomponentItemModel workoutcomponentItemModelObj;

  VoidCallback? onTapImgImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: workoutcomponentItemModelObj?.image,
            height: 171.v,
            width: 346.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgImage!.call();
            },
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 6.v,
                right: 8.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHeroiconsOutlineBookmark,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 84.v),
                  Text(
                    workoutcomponentItemModelObj.title!,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 2.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl".tr,
                          style: CustomTextStyles.titleSmallffe32020,
                        ),
                        TextSpan(
                          text: "msg_6_workouts_for_beginner".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
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
