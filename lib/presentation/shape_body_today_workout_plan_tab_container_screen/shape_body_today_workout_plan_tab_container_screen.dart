import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/presentation/shape_body_warkout_categories_page/shape_body_warkout_categories_page.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_title.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_search_view.dart';
import 'models/shape_body_today_workout_plan_tab_container_model.dart';
import 'models/trainingcomponent1_item_model.dart';
import 'provider/shape_body_today_workout_plan_tab_container_provider.dart';
import 'widgets/trainingcomponent1_item_widget.dart';

class ShapeBodyTodayWorkoutPlanTabContainerScreen extends StatefulWidget {
  const ShapeBodyTodayWorkoutPlanTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ShapeBodyTodayWorkoutPlanTabContainerScreenState createState() =>
      ShapeBodyTodayWorkoutPlanTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShapeBodyTodayWorkoutPlanTabContainerProvider(),
      child: ShapeBodyTodayWorkoutPlanTabContainerScreen(),
    );
  }
}

class ShapeBodyTodayWorkoutPlanTabContainerScreenState
    extends State<ShapeBodyTodayWorkoutPlanTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Selector<ShapeBodyTodayWorkoutPlanTabContainerProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  right: 29.h,
                ),
                child: _buildNinetyOne(
                  context,
                  workoutCategoriesText: "msg_today_workout_plan".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 16.v),
              _buildTrainingComponent(context),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  right: 29.h,
                ),
                child: _buildNinetyOne(
                  context,
                  workoutCategoriesText: "msg_warkout_categories".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 13.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 115.v,
      title: AppbarTitle(
        text: "msg_discover_how_to".tr,
        margin: EdgeInsets.only(left: 22.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgGroup10,
          margin: EdgeInsets.fromLTRB(22.h, 36.v, 22.h, 40.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTrainingComponent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Consumer<ShapeBodyTodayWorkoutPlanTabContainerProvider>(
        builder: (context, provider, child) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 171.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                provider.sliderIndex = index;
              },
            ),
            itemCount: provider.shapeBodyTodayWorkoutPlanTabContainerModelObj
                .trainingcomponent1ItemList.length,
            itemBuilder: (context, index, realIndex) {
              Trainingcomponent1ItemModel model = provider
                  .shapeBodyTodayWorkoutPlanTabContainerModelObj
                  .trainingcomponent1ItemList[index];
              return Trainingcomponent1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 31.v,
      width: 346.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor:
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_beginner".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_intermediate".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_advance".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 301.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ShapeBodyWarkoutCategoriesPage.builder(context),
          ShapeBodyWarkoutCategoriesPage.builder(context),
          ShapeBodyWarkoutCategoriesPage.builder(context),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNinetyOne(
    BuildContext context, {
    required String workoutCategoriesText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          workoutCategoriesText,
          style: theme.textTheme.titleLarge!.copyWith(
            color: appTheme.gray100,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            seeAllText,
            style: CustomTextStyles.titleMediumGray100.copyWith(
              color: appTheme.gray100,
            ),
          ),
        ),
      ],
    );
  }
}
