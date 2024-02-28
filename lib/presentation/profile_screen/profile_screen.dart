import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_switch.dart';
import 'models/profile_model.dart';
import 'models/userprofile1_item_model.dart';
import 'provider/profile_provider.dart';
import 'widgets/userprofile1_item_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfileProvider(), child: ProfileScreen());
  }
}

class ProfileScreenState extends State<ProfileScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildUserProfile(context),
                      SizedBox(height: 42.v),
                      Text("lbl_account".tr,
                          style: CustomTextStyles
                              .titleLargeOnPrimaryContainerBold),
                      SizedBox(height: 9.v),
                      Divider(color: theme.colorScheme.onPrimaryContainer),
                      SizedBox(height: 18.v),
                      _buildAchivment(context,
                          megaphoneImage:
                              ImageConstant.imgLockOnprimarycontainer,
                          achievementText: "lbl_personal_data".tr,
                          onTapAchivment: () {
                        onTapAchivment(context);
                      }),
                      SizedBox(height: 13.v),
                      _buildAchivment(context,
                          megaphoneImage: ImageConstant.imgMegaphone,
                          achievementText: "lbl_achivment".tr),
                      SizedBox(height: 14.v),
                      _buildAchivment(context,
                          megaphoneImage: ImageConstant.imgIconlyLightGraph,
                          achievementText: "msg_activity_history".tr),
                      SizedBox(height: 11.v),
                      _buildAchivment(context,
                          megaphoneImage: ImageConstant
                              .imgHeroiconsOutlineBookmarkOnprimarycontainer,
                          achievementText: "lbl_like".tr, onTapAchivment: () {
                        onTapAchivment1(context);
                      }),
                      SizedBox(height: 16.v),
                      Text("lbl_notification".tr,
                          style: CustomTextStyles
                              .titleLargeOnPrimaryContainerBold),
                      SizedBox(height: 10.v),
                      Divider(color: theme.colorScheme.onPrimaryContainer),
                      SizedBox(height: 19.v),
                      _buildNotification(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildHome(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 99.v,
        leadingWidth: 116.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgEllipse3,
            margin: EdgeInsets.only(left: 22.h)),
        title: Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Column(children: [
              Container(
                  height: 27.v,
                  width: 132.00002.h,
                  margin: EdgeInsets.only(right: 83.h),
                  child: Stack(alignment: Alignment.center, children: [
                    AppbarSubtitleTwo(text: "lbl_jefro_suirop".tr),
                    AppbarSubtitleTwo(text: "lbl_jefro_suirop".tr)
                  ])),
              SizedBox(height: 3.v),
              AppbarSubtitleFour(text: "msg_jefro_suiropku_gmail_com".tr)
            ])));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 94.v,
        child: Consumer<ProfileProvider>(builder: (context, provider, child) {
          return ListView.separated(
              padding: EdgeInsets.only(right: 3.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 29.h);
              },
              itemCount: provider.profileModelObj.userprofile1ItemList.length,
              itemBuilder: (context, index) {
                Userprofile1ItemModel model =
                    provider.profileModelObj.userprofile1ItemList[index];
                return Userprofile1ItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildNotification(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgUserOnprimarycontainer,
          height: 26.adaptSize,
          width: 26.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text("msg_pop_up_notification".tr,
              style: CustomTextStyles.titleLargeOnPrimaryContainerMedium)),
      Spacer(),
      Selector<ProfileProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                margin: EdgeInsets.only(bottom: 4.v),
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<ProfileProvider>().changeSwitchBox1(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildHome(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 28.h, bottom: 27.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHomeGray50002,
              height: 43.adaptSize,
              width: 43.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 27.adaptSize,
              width: 27.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 7.v),
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
              imagePath: ImageConstant.imgLockLimeA400,
              height: 43.adaptSize,
              width: 43.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildAchivment(
    BuildContext context, {
    required String megaphoneImage,
    required String achievementText,
    Function? onTapAchivment,
  }) {
    return GestureDetector(
        onTap: () {
          onTapAchivment!.call();
        },
        child: Row(children: [
          CustomImageView(
              imagePath: megaphoneImage,
              height: 26.adaptSize,
              width: 26.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(achievementText,
                  style: CustomTextStyles.titleLargeOnPrimaryContainerMedium
                      .copyWith(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1)))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightOnprimarycontainer,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the personalScreen when the action is triggered.
  onTapAchivment(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.personalScreen,
    );
  }

  /// Navigates to the likeScreen when the action is triggered.
  onTapAchivment1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.likeScreen,
    );
  }

  /// Navigates to the workoutProgresWeekeyScreen when the action is triggered.
  onTapImgSettings(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.workoutProgresWeekeyScreen,
    );
  }

  /// Navigates to the dailyWorkoutScheduleScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dailyWorkoutScheduleScreen,
    );
  }
}
