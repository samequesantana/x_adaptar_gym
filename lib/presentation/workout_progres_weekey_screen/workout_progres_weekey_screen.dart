import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'models/workout_progres_weekey_model.dart';
import 'provider/workout_progres_weekey_provider.dart';

class WorkoutProgresWeekeyScreen extends StatefulWidget {
  const WorkoutProgresWeekeyScreen({Key? key}) : super(key: key);

  @override
  WorkoutProgresWeekeyScreenState createState() =>
      WorkoutProgresWeekeyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WorkoutProgresWeekeyProvider(),
        child: WorkoutProgresWeekeyScreen());
  }
}

class WorkoutProgresWeekeyScreenState
    extends State<WorkoutProgresWeekeyScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCalendar(context),
                      SizedBox(height: 15.v),
                      Text("lbl_latest_workout".tr,
                          style: CustomTextStyles
                              .headlineSmallMontserratOnPrimaryContainer),
                      SizedBox(height: 10.v),
                      _buildLatestWorkout(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildNavigation(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitleOne(
            text: "lbl_workout_progres".tr,
            margin: EdgeInsets.only(left: 22.h)),
        actions: [
          Selector<WorkoutProgresWeekeyProvider, WorkoutProgresWeekeyModel?>(
              selector: (context, provider) =>
                  provider.workoutProgresWeekeyModelObj,
              builder: (context, workoutProgresWeekeyModelObj, child) {
                return AppbarTrailingDropdown(
                    margin:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                    hintText: "lbl_weekly".tr,
                    items: workoutProgresWeekeyModelObj?.dropdownItemList ?? [],
                    onTap: (value) {
                      context
                          .read<WorkoutProgresWeekeyProvider>()
                          .onSelected(value);
                    });
              })
        ]);
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Container(
                height: 166.v,
                width: 36.h,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(18.h))),
            SizedBox(height: 2.v),
            Text("lbl_sun".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgGroup37,
                height: 166.v,
                width: 37.h),
            SizedBox(height: 2.v),
            Text("lbl_mon".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            Container(
                decoration: AppDecoration.fillPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 88.v),
                      Container(
                          height: 78.v,
                          width: 36.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(18.h)))
                    ])),
            SizedBox(height: 2.v),
            Text("lbl_tue".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 3.h),
                decoration: AppDecoration.fillPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 59.v),
                  Container(
                      height: 107.v,
                      width: 36.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(18.h)))
                ])),
            SizedBox(height: 2.v),
            Text("lbl_wed".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            Container(
                decoration: AppDecoration.fillPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 49.v),
                  Container(
                      height: 117.v,
                      width: 36.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(18.h)))
                ])),
            SizedBox(height: 2.v),
            Text("lbl_thu".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            Container(
                decoration: AppDecoration.fillPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 39.v),
                  Container(
                      height: 127.v,
                      width: 36.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(18.h)))
                ])),
            SizedBox(height: 2.v),
            Text("lbl_fri".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            Container(
                decoration: AppDecoration.fillPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 23.v),
                  Container(
                      height: 143.v,
                      width: 36.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(18.h)))
                ])),
            SizedBox(height: 2.v),
            Text("lbl_sat".tr, style: theme.textTheme.titleMedium)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildLatestWorkout(BuildContext context) {
    return Container(
        height: 171.v,
        width: 346.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: 171.v,
              width: 346.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 8.h),
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
                        SizedBox(height: 63.v),
                        Text("msg_weightlifting_basic".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 2.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.titleSmallffe32020),
                              TextSpan(
                                  text: "msg_6_workouts_for_beginner".tr,
                                  style: theme.textTheme.labelLarge)
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(height: 3.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 300.h,
                                margin: EdgeInsets.symmetric(horizontal: 9.h),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Container(
                                    height: 20.v,
                                    width: 110.h,
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.primary,
                                        borderRadius:
                                            BorderRadius.circular(10.h)))))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildNavigation(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 28.h, bottom: 27.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHomeGray50002,
              height: 43.adaptSize,
              width: 43.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgSettingsLimeA400,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 7.v)),
          CustomImageView(
              imagePath: ImageConstant.imgHeroiconsSolidCalendar,
              height: 37.adaptSize,
              width: 37.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 3.v),
              onTap: () {
                onTapImgImage(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 43.adaptSize,
              width: 43.adaptSize,
              onTap: () {
                onTapImgLock(context);
              })
        ]));
  }

  /// Navigates to the dailyWorkoutScheduleScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dailyWorkoutScheduleScreen,
    );
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImgLock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileScreen,
    );
  }
}
