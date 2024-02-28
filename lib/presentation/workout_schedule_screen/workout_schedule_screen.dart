import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/workout_schedule_model.dart';
import 'provider/workout_schedule_provider.dart';

class WorkoutScheduleScreen extends StatefulWidget {
  const WorkoutScheduleScreen({Key? key}) : super(key: key);

  @override
  WorkoutScheduleScreenState createState() => WorkoutScheduleScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WorkoutScheduleProvider(),
        child: WorkoutScheduleScreen());
  }
}

class WorkoutScheduleScreenState extends State<WorkoutScheduleScreen> {
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
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text("lbl_mar_2023".tr,
                            style: theme.textTheme.titleMedium)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 7.h))
                  ]),
                  SizedBox(height: 21.v),
                  _buildCalendar(context),
                  SizedBox(height: 42.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 27.v,
                          width: 56.h,
                          margin: EdgeInsets.only(left: 22.h),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_time".tr,
                                    style: CustomTextStyles
                                        .titleLargeOnPrimaryContainer22)),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_time".tr,
                                    style: CustomTextStyles
                                        .titleLargeOnPrimaryContainer22))
                          ]))),
                  SizedBox(height: 17.v),
                  Divider(indent: 22.h, endIndent: 22.h),
                  SizedBox(height: 7.v),
                  Text("lbl_09_30".tr,
                      style:
                          CustomTextStyles.titleLargeOnPrimaryContainerMedium),
                  SizedBox(height: 7.v),
                  Divider(indent: 22.h, endIndent: 22.h),
                  SizedBox(height: 11.v),
                  CustomElevatedButton(
                      height: 66.v,
                      width: 189.h,
                      text: "lbl_set_time".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallMontserratBlack900),
                  Spacer(),
                  SizedBox(height: 22.v),
                  CustomElevatedButton(
                      height: 66.v,
                      text: "lbl_save".tr,
                      margin: EdgeInsets.only(left: 28.h, right: 16.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.headlineSmallMontserratBlack900)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 52.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 22.h, top: 13.v, bottom: 12.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "msg_workout_schedule".tr));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(child: Consumer<WorkoutScheduleProvider>(
            builder: (context, provider, child) {
          return SizedBox(
              height: 101.v,
              width: 558.h,
              child: EasyDateTimeLine(
                  initialDate:
                      provider.selectedDatesFromCalendar1 ?? DateTime.now(),
                  locale: 'en_US',
                  headerProps: EasyHeaderProps(
                      selectedDateFormat: SelectedDateFormat.fullDateDMY,
                      monthPickerType: MonthPickerType.switcher,
                      showHeader: false),
                  dayProps: EasyDayProps(width: 87.h, height: 101.v),
                  onDateChange: (selectedDate) {
                    provider.selectedDatesFromCalendar1 = selectedDate;
                  },
                  itemBuilder: (context, dayNumber, dayName, monthName,
                      fullDate, isSelected) {
                    return isSelected
                        ? Container(
                            width: 87.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 26.h, vertical: 13.v),
                            decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(12.h)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(right: 3.h),
                                      child: Text(dayName.toString(),
                                          style: CustomTextStyles
                                              .titleLargeBlack900_1
                                              .copyWith(
                                                  color: appTheme.black900))),
                                  Padding(
                                      padding: EdgeInsets.only(top: 4.v),
                                      child: Text(dayNumber.toString(),
                                          style: CustomTextStyles
                                              .displaySmallBlack900
                                              .copyWith(
                                                  color: appTheme.black900)))
                                ]))
                        : Container(
                            width: 87.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 18.v),
                            decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                borderRadius: BorderRadius.circular(12.h)),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(dayName.toString(),
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleLargeBlack900_1
                                          .copyWith(color: appTheme.black900)),
                                  Padding(
                                      padding: EdgeInsets.only(top: 10.v),
                                      child: Text(dayNumber.toString(),
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .displaySmallBlack900
                                              .copyWith(
                                                  color: appTheme.black900)))
                                ]));
                  }));
        })));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
