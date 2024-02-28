import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import '../models/trainingcomponent_item_model.dart';

// ignore: must_be_immutable
class TrainingcomponentItemWidget extends StatelessWidget {
  TrainingcomponentItemWidget(
    this.trainingcomponentItemModelObj, {
    Key? key,
    this.onTapImgTrainingImage,
  }) : super(
          key: key,
        );

  TrainingcomponentItemModel trainingcomponentItemModelObj;

  VoidCallback? onTapImgTrainingImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171.v,
      width: 319.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: trainingcomponentItemModelObj?.trainingImage,
            height: 171.v,
            width: 319.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgTrainingImage!.call();
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 12.h,
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
                  SizedBox(height: 89.v),
                  Text(
                    trainingcomponentItemModelObj.trainingText!,
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
