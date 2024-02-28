import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'models/daily_workout_schedule_model.dart';
import 'provider/daily_workout_schedule_provider.dart';

class DailyWorkoutScheduleScreen extends StatefulWidget {
  const DailyWorkoutScheduleScreen({Key? key}) : super(key: key);

  @override
  DailyWorkoutScheduleScreenState createState() =>
      DailyWorkoutScheduleScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DailyWorkoutScheduleProvider(),
        child: DailyWorkoutScheduleScreen());
  }
}

class DailyWorkoutScheduleScreenState
    extends State<DailyWorkoutScheduleScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 18.v),
                child: Column(children: [
                  Text("msg_daily_workout_schedule".tr,
                      style: CustomTextStyles
                          .headlineSmallMontserratOnPrimaryContainer),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_upcoming_workout".tr,
                          style: CustomTextStyles.titleMediumSemiBold)),
                  SizedBox(height: 17.v),
                  _buildWorkoutSchedule(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildHomeSection(context)));
  }

  /// Section Widget
  Widget _buildWorkoutSchedule(BuildContext context) {
    return SizedBox(
        height: 171.v,
        width: 346.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: 171.v,
              width: 346.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, top: 6.v, right: 8.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgHeroiconsOutlineBookmark,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            alignment: Alignment.centerRight),
                        SizedBox(height: 84.v),
                        Text("msg_weightlifting_basic".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 2.v),
                        Text("lbl_tomorrow_09_30".tr,
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildHomeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 28.h, bottom: 27.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHomeGray50002,
              height: 43.adaptSize,
              width: 43.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 7.v),
              onTap: () {
                onTapImgSettings(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgHeroiconsSolidCalendarLimeA400,
              height: 37.adaptSize,
              width: 37.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 3.v)),
          CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 43.adaptSize,
              width: 43.adaptSize,
              onTap: () {
                onTapImgLock(context);
              })
        ]));
  }

  /// Navigates to the workoutProgresWeekeyScreen when the action is triggered.
  onTapImgSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workoutProgresWeekeyScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgLock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
