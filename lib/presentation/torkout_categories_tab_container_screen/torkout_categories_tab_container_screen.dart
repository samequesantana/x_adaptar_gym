import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/presentation/torkout_categories_page/torkout_categories_page.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'models/torkout_categories_tab_container_model.dart';
import 'provider/torkout_categories_tab_container_provider.dart';

class TorkoutCategoriesTabContainerScreen extends StatefulWidget {
  const TorkoutCategoriesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TorkoutCategoriesTabContainerScreenState createState() =>
      TorkoutCategoriesTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TorkoutCategoriesTabContainerProvider(),
      child: TorkoutCategoriesTabContainerScreen(),
    );
  }
}

class TorkoutCategoriesTabContainerScreenState
    extends State<TorkoutCategoriesTabContainerScreen>
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
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 703.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      TorkoutCategoriesPage.builder(context),
                      TorkoutCategoriesPage.builder(context),
                      TorkoutCategoriesPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 12.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_workout_categories".tr,
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
}
