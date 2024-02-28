import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'models/workout_progres_mounthly_model.dart';
import 'provider/workout_progres_mounthly_provider.dart';

class WorkoutProgresMounthlyScreen extends StatefulWidget {
  const WorkoutProgresMounthlyScreen({Key? key}) : super(key: key);

  @override
  WorkoutProgresMounthlyScreenState createState() =>
      WorkoutProgresMounthlyScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WorkoutProgresMounthlyProvider(),
        child: WorkoutProgresMounthlyScreen());
  }
}

class WorkoutProgresMounthlyScreenState
    extends State<WorkoutProgresMounthlyScreen> {
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
                      _buildWorkoutProgressRow(context),
                      SizedBox(height: 13.v),
                      Text("lbl_latest_workout".tr,
                          style: CustomTextStyles
                              .headlineSmallMontserratOnPrimaryContainer),
                      SizedBox(height: 10.v),
                      _buildLatestWorkoutStack(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildHomeRow(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitleOne(
            text: "lbl_workout_progres".tr,
            margin: EdgeInsets.only(left: 22.h)),
        actions: [
          Selector<WorkoutProgresMounthlyProvider,
                  WorkoutProgresMounthlyModel?>(
              selector: (context, provider) =>
                  provider.workoutProgresMounthlyModelObj,
              builder: (context, workoutProgresMounthlyModelObj, child) {
                return AppbarTrailingDropdown(
                    margin:
                        EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                    hintText: "lbl_mounthly".tr,
                    items:
                        workoutProgresMounthlyModelObj?.dropdownItemList ?? [],
                    onTap: (value) {
                      context
                          .read<WorkoutProgresMounthlyProvider>()
                          .onSelected(value);
                    });
              })
        ]);
  }

  /// Section Widget
  Widget _buildWorkoutProgressRow(BuildContext context) {
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
            Text("lbl_mar".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgGroup37,
                height: 166.v,
                width: 37.h),
            SizedBox(height: 4.v),
            Text("lbl_apr".tr, style: theme.textTheme.titleMedium)
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
            SizedBox(height: 4.v),
            Text("lbl_may".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(children: [
            Container(
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
            Text("lbl_jun".tr, style: theme.textTheme.titleMedium)
          ]),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(children: [
                Container(
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
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
                Text("lbl_jul".tr, style: theme.textTheme.titleMedium)
              ])),
          Column(children: [
            Container(
                margin: EdgeInsets.only(right: 1.h),
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
            SizedBox(height: 4.v),
            Text("lbl_agu".tr, style: theme.textTheme.titleMedium)
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 23.v),
                      Container(
                          height: 143.v,
                          width: 36.h,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(18.h)))
                    ]))),
            SizedBox(height: 4.v),
            Text("lbl_sep".tr, style: theme.textTheme.titleMedium)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildLatestWorkoutStack(BuildContext context) {
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
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 9.h),
                                child: Container(
                                    height: 20.v,
                                    width: 300.h,
                                    decoration: BoxDecoration(
                                        color:
                                            theme.colorScheme.primaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(10.h)),
                                    child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.h),
                                        child: LinearProgressIndicator(
                                            value: 0.37,
                                            backgroundColor: theme
                                                .colorScheme.primaryContainer,
                                            valueColor: AlwaysStoppedAnimation<
                                                    Color>(
                                                theme.colorScheme.primary))))))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
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
