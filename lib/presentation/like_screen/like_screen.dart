import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'models/like_model.dart';
import 'provider/like_provider.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LikeScreenState createState() => LikeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LikeProvider(),
      child: LikeScreen(),
    );
  }
}

class LikeScreenState extends State<LikeScreen> {
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
          height: 731.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 6.v,
          ),
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
                alignment: Alignment.topCenter,
              ),
              _buildWeightliftingBasic(context),
            ],
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
          top: 14.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_like".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildWeightliftingBasic(BuildContext context) {
    return Align(
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
    );
  }
}
