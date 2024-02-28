import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'models/app_navigation_model.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "torkout_categories - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.torkoutCategoriesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "weightlifting_start".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.weightliftingStartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "weightlifting_resume".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.weightliftingResumeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "warming_up_stopped_oder".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.warmingUpStoppedOderScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "warming_up_play".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.warmingUpPlayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "warming_up_stopped".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.warmingUpStoppedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "shape_body_today_workout_plan - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .shapeBodyTodayWorkoutPlanTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "congratulations".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.congratulationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot_password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot_password_code".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordCodeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forgot_password_change".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgotPasswordChangeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "workout_progres_weekey".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.workoutProgresWeekeyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "workout_schedule".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.workoutScheduleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "warming_up_next".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.warmingUpNextScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register_login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "upload_photo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadPhotoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "upload_photo_ok".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadPhotoOkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "workout_progres_mounthly".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.workoutProgresMounthlyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "search_results".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchResultsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register_info_sex".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerInfoSexScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register_info_age".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerInfoAgeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register_info_height".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registerInfoHeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "register_info_weight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registerInfoWeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "workout_progres_annual".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.workoutProgresAnnualScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "daily_workout_schedule".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyWorkoutScheduleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "personal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.personalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "like".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.likeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
