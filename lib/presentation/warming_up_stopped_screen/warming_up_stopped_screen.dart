import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/warming_up_stopped_model.dart';
import 'provider/warming_up_stopped_provider.dart';

class WarmingUpStoppedScreen extends StatefulWidget {
  const WarmingUpStoppedScreen({Key? key}) : super(key: key);

  @override
  WarmingUpStoppedScreenState createState() => WarmingUpStoppedScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WarmingUpStoppedProvider(),
        child: WarmingUpStoppedScreen());
  }
}

class WarmingUpStoppedScreenState extends State<WarmingUpStoppedScreen> {
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
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 507.v,
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle48,
                                height: 507.v,
                                width: 390.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 27.h, top: 20.v, right: 129.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          _buildAppBar(context),
                                          SizedBox(height: 136.v),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgOverflowMenu,
                                              height: 66.adaptSize,
                                              width: 66.adaptSize,
                                              radius:
                                                  BorderRadius.circular(6.h),
                                              margin:
                                                  EdgeInsets.only(right: 33.h))
                                        ])))
                          ]))),
                  _buildFourteen(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: 70.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 27.h)),
        centerTitle: true,
        title: AppbarSubtitleThree(text: "lbl_warming_up".tr));
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 30.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("lbl_secored_time".tr,
                  style: CustomTextStyles.titleMediumErrorContainer),
              SizedBox(height: 2.v),
              Text("lbl_00_00".tr, style: theme.textTheme.displayLarge),
              Text("lbl_4x_repts".tr, style: CustomTextStyles.titleLargeMedium),
              SizedBox(height: 58.v),
              CustomElevatedButton(
                  height: 66.v,
                  text: "lbl_finish".tr,
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle:
                      CustomTextStyles.headlineSmallMontserratBlack900,
                  onPressed: () {
                    onTapFinish(context);
                  }),
              SizedBox(height: 9.v)
            ])));
  }

  /// Navigates to the congratulationsScreen when the action is triggered.
  onTapFinish(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.congratulationsScreen,
    );
  }
}
