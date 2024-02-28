import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_icon_button.dart';
import '../models/userprofile_item_model.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          height: 49.adaptSize,
          width: 49.adaptSize,
          padding: EdgeInsets.all(9.h),
          decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
          child: CustomImageView(
            imagePath: userprofileItemModelObj?.iconButton,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 7.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofileItemModelObj.text1!,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
                SizedBox(height: 2.v),
                Text(
                  userprofileItemModelObj.text2!,
                  style: CustomTextStyles.titleSmallGray50003,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
