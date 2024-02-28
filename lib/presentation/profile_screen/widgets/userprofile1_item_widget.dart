import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import '../models/userprofile1_item_model.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 94.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            userprofile1ItemModelObj.heightText!,
            style: CustomTextStyles.titleLargePrimary,
          ),
          SizedBox(height: 1.v),
          Text(
            userprofile1ItemModelObj.heightLabel!,
            style: CustomTextStyles.titleLargeOnPrimaryContainerMedium,
          ),
        ],
      ),
    );
  }
}
