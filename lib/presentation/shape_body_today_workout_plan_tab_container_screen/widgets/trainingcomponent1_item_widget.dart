import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import '../models/trainingcomponent1_item_model.dart';

// ignore: must_be_immutable
class Trainingcomponent1ItemWidget extends StatelessWidget {
  Trainingcomponent1ItemWidget(
    this.trainingcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Trainingcomponent1ItemModel trainingcomponent1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 171.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle10,
            height: 171.v,
            width: 346.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                right: 135.h,
                bottom: 13.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_learn_the_basic".tr,
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
