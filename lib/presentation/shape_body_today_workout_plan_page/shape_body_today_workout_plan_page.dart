import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'models/shape_body_today_workout_plan_model.dart';
import 'models/weightliftingbasic_item_model.dart';
import 'provider/shape_body_today_workout_plan_provider.dart';
import 'widgets/weightliftingbasic_item_widget.dart';

class ShapeBodyTodayWorkoutPlanPage extends StatefulWidget {
  const ShapeBodyTodayWorkoutPlanPage({Key? key}) : super(key: key);

  @override
  ShapeBodyTodayWorkoutPlanPageState createState() =>
      ShapeBodyTodayWorkoutPlanPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ShapeBodyTodayWorkoutPlanProvider(),
        child: ShapeBodyTodayWorkoutPlanPage());
  }
}

class ShapeBodyTodayWorkoutPlanPageState
    extends State<ShapeBodyTodayWorkoutPlanPage>
    with AutomaticKeepAliveClientMixin<ShapeBodyTodayWorkoutPlanPage> {
  @override
  bool get wantKeepAlive => true;

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
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 171.v,
                                    child: Consumer<
                                            ShapeBodyTodayWorkoutPlanProvider>(
                                        builder: (context, provider, child) {
                                      return ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(width: 16.h);
                                          },
                                          itemCount: provider
                                              .shapeBodyTodayWorkoutPlanModelObj
                                              .weightliftingbasicItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            WeightliftingbasicItemModel model = provider
                                                .shapeBodyTodayWorkoutPlanModelObj
                                                .weightliftingbasicItemList[index];
                                            return WeightliftingbasicItemWidget(
                                                model, onTapImgImage: () {
                                              onTapImgImage(context);
                                            });
                                          });
                                    })),
                                SizedBox(height: 41.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 6.h, right: 29.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgHome,
                                              height: 43.adaptSize,
                                              width: 43.adaptSize),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 27.adaptSize,
                                              width: 27.adaptSize,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 8.v),
                                              onTap: () {
                                                onTapImgSettings(context);
                                              }),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgHeroiconsSolidCalendar,
                                              height: 37.adaptSize,
                                              width: 37.adaptSize,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 3.v),
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
                                        ]))
                              ])))
                ]))));
  }

  /// Navigates to the weightliftingStartScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dailyWorkoutScheduleScreen,
    );
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
