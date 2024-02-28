import 'package:flutter/material.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/torkout_categories_tab_container_screen/torkout_categories_tab_container_screen.dart';
import '../presentation/weightlifting_start_screen/weightlifting_start_screen.dart';
import '../presentation/weightlifting_resume_screen/weightlifting_resume_screen.dart';
import '../presentation/warming_up_stopped_oder_screen/warming_up_stopped_oder_screen.dart';
import '../presentation/warming_up_play_screen/warming_up_play_screen.dart';
import '../presentation/warming_up_stopped_screen/warming_up_stopped_screen.dart';
import '../presentation/shape_body_today_workout_plan_tab_container_screen/shape_body_today_workout_plan_tab_container_screen.dart';
import '../presentation/congratulations_screen/congratulations_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_code_screen/forgot_password_code_screen.dart';
import '../presentation/forgot_password_change_screen/forgot_password_change_screen.dart';
import '../presentation/notifications_screen/notifications_screen.dart';
import '../presentation/workout_progres_weekey_screen/workout_progres_weekey_screen.dart';
import '../presentation/workout_schedule_screen/workout_schedule_screen.dart';
import '../presentation/warming_up_next_screen/warming_up_next_screen.dart';
import '../presentation/register_login_screen/register_login_screen.dart';
import '../presentation/upload_photo_screen/upload_photo_screen.dart';
import '../presentation/upload_photo_ok_screen/upload_photo_ok_screen.dart';
import '../presentation/workout_progres_mounthly_screen/workout_progres_mounthly_screen.dart';
import '../presentation/search_results_screen/search_results_screen.dart';
import '../presentation/register_info_sex_screen/register_info_sex_screen.dart';
import '../presentation/register_info_age_screen/register_info_age_screen.dart';
import '../presentation/register_info_height_screen/register_info_height_screen.dart';
import '../presentation/register_info_weight_screen/register_info_weight_screen.dart';
import '../presentation/workout_progres_annual_screen/workout_progres_annual_screen.dart';
import '../presentation/daily_workout_schedule_screen/daily_workout_schedule_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/personal_screen/personal_screen.dart';
import '../presentation/like_screen/like_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String shapeBodyWarkoutCategoriesPage =
      '/shape_body_warkout_categories_page';

  static const String torkoutCategoriesPage = '/torkout_categories_page';

  static const String torkoutCategoriesTabContainerScreen =
      '/torkout_categories_tab_container_screen';

  static const String weightliftingStartScreen = '/weightlifting_start_screen';

  static const String weightliftingResumeScreen =
      '/weightlifting_resume_screen';

  static const String warmingUpStoppedOderScreen =
      '/warming_up_stopped_oder_screen';

  static const String warmingUpPlayScreen = '/warming_up_play_screen';

  static const String warmingUpStoppedScreen = '/warming_up_stopped_screen';

  static const String shapeBodyTodayWorkoutPlanPage =
      '/shape_body_today_workout_plan_page';

  static const String shapeBodyTodayWorkoutPlanTabContainerScreen =
      '/shape_body_today_workout_plan_tab_container_screen';

  static const String congratulationsScreen = '/congratulations_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordCodeScreen = '/forgot_password_code_screen';

  static const String forgotPasswordChangeScreen =
      '/forgot_password_change_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String workoutProgresWeekeyScreen =
      '/workout_progres_weekey_screen';

  static const String workoutScheduleScreen = '/workout_schedule_screen';

  static const String warmingUpNextScreen = '/warming_up_next_screen';

  static const String registerLoginScreen = '/register_login_screen';

  static const String uploadPhotoScreen = '/upload_photo_screen';

  static const String uploadPhotoOkScreen = '/upload_photo_ok_screen';

  static const String workoutProgresMounthlyScreen =
      '/workout_progres_mounthly_screen';

  static const String searchResultsScreen = '/search_results_screen';

  static const String registerInfoSexScreen = '/register_info_sex_screen';

  static const String registerInfoAgeScreen = '/register_info_age_screen';

  static const String registerInfoHeightScreen = '/register_info_height_screen';

  static const String registerInfoWeightScreen = '/register_info_weight_screen';

  static const String workoutProgresAnnualScreen =
      '/workout_progres_annual_screen';

  static const String dailyWorkoutScheduleScreen =
      '/daily_workout_schedule_screen';

  static const String profileScreen = '/profile_screen';

  static const String personalScreen = '/personal_screen';

  static const String likeScreen = '/like_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        torkoutCategoriesTabContainerScreen:
            TorkoutCategoriesTabContainerScreen.builder,
        weightliftingStartScreen: WeightliftingStartScreen.builder,
        weightliftingResumeScreen: WeightliftingResumeScreen.builder,
        warmingUpStoppedOderScreen: WarmingUpStoppedOderScreen.builder,
        warmingUpPlayScreen: WarmingUpPlayScreen.builder,
        warmingUpStoppedScreen: WarmingUpStoppedScreen.builder,
        shapeBodyTodayWorkoutPlanTabContainerScreen:
            ShapeBodyTodayWorkoutPlanTabContainerScreen.builder,
        congratulationsScreen: CongratulationsScreen.builder,
        loginScreen: LoginScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        forgotPasswordCodeScreen: ForgotPasswordCodeScreen.builder,
        forgotPasswordChangeScreen: ForgotPasswordChangeScreen.builder,
        notificationsScreen: NotificationsScreen.builder,
        workoutProgresWeekeyScreen: WorkoutProgresWeekeyScreen.builder,
        workoutScheduleScreen: WorkoutScheduleScreen.builder,
        warmingUpNextScreen: WarmingUpNextScreen.builder,
        registerLoginScreen: RegisterLoginScreen.builder,
        uploadPhotoScreen: UploadPhotoScreen.builder,
        uploadPhotoOkScreen: UploadPhotoOkScreen.builder,
        workoutProgresMounthlyScreen: WorkoutProgresMounthlyScreen.builder,
        searchResultsScreen: SearchResultsScreen.builder,
        registerInfoSexScreen: RegisterInfoSexScreen.builder,
        registerInfoAgeScreen: RegisterInfoAgeScreen.builder,
        registerInfoHeightScreen: RegisterInfoHeightScreen.builder,
        registerInfoWeightScreen: RegisterInfoWeightScreen.builder,
        workoutProgresAnnualScreen: WorkoutProgresAnnualScreen.builder,
        dailyWorkoutScheduleScreen: DailyWorkoutScheduleScreen.builder,
        profileScreen: ProfileScreen.builder,
        personalScreen: PersonalScreen.builder,
        likeScreen: LikeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
