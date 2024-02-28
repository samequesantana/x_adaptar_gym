import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'models/shape_body_warkout_categories_model.dart';
import 'models/trainingcomponent_item_model.dart';
import 'models/workoutlist_item_model.dart';
import 'provider/shape_body_warkout_categories_provider.dart';
import 'widgets/trainingcomponent_item_widget.dart';
import 'widgets/workoutlist_item_widget.dart';

class ShapeBodyWarkoutCategoriesPage extends StatefulWidget {
  const ShapeBodyWarkoutCategoriesPage({Key? key}) : super(key: key);

  @override
  ShapeBodyWarkoutCategoriesPageState createState() =>
      ShapeBodyWarkoutCategoriesPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ShapeBodyWarkoutCategoriesProvider(),
        child: ShapeBodyWarkoutCategoriesPage());
  }
}

class ShapeBodyWarkoutCategoriesPageState
    extends State<ShapeBodyWarkoutCategoriesPage>
    with AutomaticKeepAliveClientMixin<ShapeBodyWarkoutCategoriesPage> {
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
                                _buildWorkoutList(context),
                                SizedBox(height: 17.v),
                                Text("lbl_new_workouts".tr,
                                    style: theme.textTheme.titleLarge),
                                SizedBox(height: 17.v),
                                _buildTrainingComponent(context),
                                SizedBox(height: 41.v),
                                _buildHomeRow(context)
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildWorkoutList(BuildContext context) {
    return SizedBox(
        height: 171.v,
        child: Consumer<ShapeBodyWarkoutCategoriesProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: provider.shapeBodyWarkoutCategoriesModelObj
                  .workoutlistItemList.length,
              itemBuilder: (context, index) {
                WorkoutlistItemModel model = provider
                    .shapeBodyWarkoutCategoriesModelObj
                    .workoutlistItemList[index];
                return WorkoutlistItemWidget(model, onTapImgImage: () {
                  onTapImgImage(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildTrainingComponent(BuildContext context) {
    return SizedBox(
        height: 171.v,
        child: Consumer<ShapeBodyWarkoutCategoriesProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: provider.shapeBodyWarkoutCategoriesModelObj
                  .trainingcomponentItemList.length,
              itemBuilder: (context, index) {
                TrainingcomponentItemModel model = provider
                    .shapeBodyWarkoutCategoriesModelObj
                    .trainingcomponentItemList[index];
                return TrainingcomponentItemWidget(model,
                    onTapImgTrainingImage: () {
                  onTapImgTrainingImage(context);
                });
              });
        }));
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 29.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHome,
              height: 43.adaptSize,
              width: 43.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
              onTap: () {
                onTapImgSettings(context);
              }),
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

  /// Navigates to the weightliftingStartScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dailyWorkoutScheduleScreen,
    );
  }

  /// Navigates to the weightliftingStartScreen when the action is triggered.
  onTapImgTrainingImage(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.weightliftingStartScreen);
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
