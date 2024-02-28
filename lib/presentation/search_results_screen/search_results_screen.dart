import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_title_searchview.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'models/search_results_model.dart';
import 'provider/search_results_provider.dart';

class SearchResultsScreen extends StatefulWidget {
  const SearchResultsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultsScreenState createState() => SearchResultsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SearchResultsProvider(),
      child: SearchResultsScreen(),
    );
  }
}

class SearchResultsScreenState extends State<SearchResultsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: _buildSearchResults(context),
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
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      title: Selector<SearchResultsProvider, TextEditingController?>(
        selector: (
          context,
          provider,
        ) =>
            provider.searchController,
        builder: (context, searchController, child) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 9.h),
            hintText: "msg_weightlifting_basic".tr,
            controller: searchController,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchResults(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          Text(
            "lbl_search_results".tr,
            style: CustomTextStyles.titleSmallOnPrimaryContainerMedium_1,
          ),
          SizedBox(height: 28.v),
          SizedBox(
            height: 171.v,
            width: 346.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle10,
                  height: 171.v,
                  width: 346.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 6.v,
                      right: 8.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgHeroiconsOutlineBookmark,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 84.v),
                        Text(
                          "msg_weightlifting_basic".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 2.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl".tr,
                                style: CustomTextStyles.titleSmallffe32020,
                              ),
                              TextSpan(
                                text: "msg_6_workouts_for_beginner".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
