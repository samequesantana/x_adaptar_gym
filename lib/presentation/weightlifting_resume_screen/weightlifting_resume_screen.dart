import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_icon_button.dart';
import 'models/weightlifting_resume_model.dart';
import 'provider/weightlifting_resume_provider.dart';

class WeightliftingResumeScreen extends StatefulWidget {
  const WeightliftingResumeScreen({Key? key}) : super(key: key);

  @override
  WeightliftingResumeScreenState createState() =>
      WeightliftingResumeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WeightliftingResumeProvider(),
        child: WeightliftingResumeScreen());
  }
}

class WeightliftingResumeScreenState extends State<WeightliftingResumeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFiftyTwo(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 646.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.h,
                                                vertical: 20.v),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL30),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("lbl_weightlifting".tr,
                                                      style: CustomTextStyles
                                                          .headlineSmallMontserratGray100),
                                                  SizedBox(height: 4.v),
                                                  Text(
                                                      "msg_6_workouts_for_beginner2"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleMediumGray100_1),
                                                  SizedBox(height: 20.v),
                                                  _buildCalendar(context),
                                                  SizedBox(height: 16.v),
                                                  Text("lbl_exercises".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeBold),
                                                  SizedBox(height: 16.v)
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 22.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  _buildTwentyTwo(context),
                                                  SizedBox(height: 15.v),
                                                  _buildTwentyFour(context,
                                                      jobTitle:
                                                          "lbl_traditional_job"
                                                              .tr,
                                                      time: "lbl_00_20".tr),
                                                  SizedBox(height: 15.v),
                                                  _buildTwentyFour(context,
                                                      jobTitle:
                                                          "lbl_traditional_job"
                                                              .tr,
                                                      time: "lbl_00_20".tr),
                                                  SizedBox(height: 15.v),
                                                  _buildTwentyFour(context,
                                                      jobTitle:
                                                          "lbl_traditional_job"
                                                              .tr,
                                                      time: "lbl_00_20".tr),
                                                  SizedBox(height: 15.v),
                                                  _buildTwentySix(context),
                                                  SizedBox(height: 15.v),
                                                  _buildTwentySeven(context)
                                                ]))),
                                    _buildFortyNine(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return SizedBox(
        height: 222.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle11,
              height: 222.v,
              width: 390.h,
              alignment: Alignment.center),
          CustomAppBar(
              height: 63.v,
              leadingWidth: 65.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowDown,
                  margin: EdgeInsets.only(left: 22.h)),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgHeroiconsOutlineBookmark,
                    margin: EdgeInsets.symmetric(horizontal: 22.h))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCalendar(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
            decoration: AppDecoration.fillPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  margin: EdgeInsets.only(left: 1.h)),
              Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 3.v),
                  child: Text("msg_schedule_workout".tr,
                      style: CustomTextStyles.titleMedium16_1)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Text("lbl_3_5_09_30".tr,
                      style: theme.textTheme.bodyMedium)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimarycontainer,
                  height: 24.adaptSize,
                  width: 24.adaptSize)
            ])));
  }

  /// Section Widget
  Widget _buildTwentyTwo(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle14,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(10.h)),
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 2.v, bottom: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_warming_up".tr,
                        style: theme.textTheme.titleLarge),
                    Text("lbl_02_00".tr,
                        style: CustomTextStyles.titleMediumGray50001)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgCheckmark,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 15.v))
        ]));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 7.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle14,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(10.h),
              margin: EdgeInsets.only(left: 7.h)),
          Padding(
              padding: EdgeInsets.only(left: 13.h, bottom: 2.v),
              child: _buildTwentyOne(context,
                  jobTitle: "lbl_traditional_job".tr, time: "lbl_00_20".tr)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 14.v))
        ]));
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return SizedBox(
        height: 41.v,
        width: 346.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 66.v,
                  width: 346.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray800,
                      borderRadius: BorderRadius.circular(10.h)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 4.v, right: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle14,
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            radius: BorderRadius.circular(10.h),
                            margin: EdgeInsets.only(top: 2.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 13.h, bottom: 4.v),
                            child: _buildTwentyOne(context,
                                jobTitle: "lbl_traditional_job".tr,
                                time: "lbl_00_20".tr)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(top: 16.v, bottom: 14.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(bottom: 19.v),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.v),
            decoration: AppDecoration.gradientBlackToBlack,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 160.v),
                  CustomElevatedButton(
                      height: 66.v,
                      text: "lbl_resume_workout".tr,
                      margin: EdgeInsets.only(left: 12.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallMontserratBlack900)
                ])));
  }

  /// Common widget
  Widget _buildTwentyFour(
    BuildContext context, {
    required String jobTitle,
    required String time,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 7.v),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle14,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(10.h),
              margin: EdgeInsets.only(left: 7.h)),
          Padding(
              padding: EdgeInsets.only(left: 13.h, bottom: 2.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(jobTitle,
                        style: theme.textTheme.titleLarge!
                            .copyWith(color: appTheme.gray100)),
                    SizedBox(height: 1.v),
                    Text(time,
                        style: CustomTextStyles.titleMediumGray50001
                            .copyWith(color: appTheme.gray50001))
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 14.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                      imagePath:
                          ImageConstant.imgArrowRightOnprimarycontainer24x24)))
        ]));
  }

  /// Common widget
  Widget _buildTwentyOne(
    BuildContext context, {
    required String jobTitle,
    required String time,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(jobTitle,
          style: theme.textTheme.titleLarge!.copyWith(color: appTheme.gray100)),
      SizedBox(height: 1.v),
      Text(time,
          style: CustomTextStyles.titleMediumGray50001
              .copyWith(color: appTheme.gray50001))
    ]);
  }

  /// Navigates to the workoutScheduleScreen when the action is triggered.
  onTapCalendar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workoutScheduleScreen,
    );
  }
}
