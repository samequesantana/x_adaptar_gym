import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/warming_up_play_model.dart';
import 'provider/warming_up_play_provider.dart';

class WarmingUpPlayScreen extends StatefulWidget {
  const WarmingUpPlayScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WarmingUpPlayScreenState createState() => WarmingUpPlayScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WarmingUpPlayProvider(),
      child: WarmingUpPlayScreen(),
    );
  }
}

class WarmingUpPlayScreenState extends State<WarmingUpPlayScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 802.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 507.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle48,
                        height: 507.v,
                        width: 390.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 27.h,
                            top: 20.v,
                            right: 129.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildAppBar(context),
                              SizedBox(height: 139.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 60.v,
                                width: 47.h,
                                margin: EdgeInsets.only(right: 42.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildNineteen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 43.v,
      leadingWidth: 70.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(left: 27.h),
      ),
      centerTitle: true,
      title: AppbarSubtitleThree(
        text: "lbl_warming_up".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 30.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "lbl_secored_time".tr,
              style: CustomTextStyles.titleMediumErrorContainer,
            ),
            SizedBox(height: 2.v),
            Text(
              "lbl_01_20".tr,
              style: theme.textTheme.displayLarge,
            ),
            Text(
              "lbl_4x_repts".tr,
              style: CustomTextStyles.titleLargeMedium,
            ),
            SizedBox(height: 58.v),
            CustomElevatedButton(
              height: 66.v,
              text: "lbl_next".tr,
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.headlineSmallMontserratBlack900,
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }
}
