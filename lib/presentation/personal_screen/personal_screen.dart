import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_leading_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_subtitle.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_text_form_field.dart';
import 'models/personal_model.dart';
import 'provider/personal_provider.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PersonalScreenState createState() => PersonalScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PersonalProvider(),
      child: PersonalScreen(),
    );
  }
}

class PersonalScreenState extends State<PersonalScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 5.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse3146x146,
                height: 146.adaptSize,
                width: 146.adaptSize,
                radius: BorderRadius.circular(
                  73.h,
                ),
              ),
              SizedBox(height: 49.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_username".tr,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer22,
                ),
              ),
              SizedBox(height: 2.v),
              Selector<PersonalProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.userNameController,
                builder: (context, userNameController, child) {
                  return CustomTextFormField(
                    controller: userNameController,
                    hintText: "lbl_jefro_suirop".tr,
                  );
                },
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_email".tr,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer22,
                ),
              ),
              SizedBox(height: 2.v),
              Selector<PersonalProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.emailController,
                builder: (context, emailController, child) {
                  return CustomTextFormField(
                    controller: emailController,
                    hintText: "msg_jefro_suiropku_gmail_com".tr,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_personal_data".tr,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer22,
                ),
              ),
              SizedBox(height: 2.v),
              _buildDistance(context),
              SizedBox(height: 5.v),
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
          top: 13.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_personal_data".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDistance(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 16.h),
          child: _buildPersonalData(
            context,
            weightText: "lbl_180cm".tr,
            weightLabel: "lbl_height".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildPersonalData(
            context,
            weightText: "lbl_80kg".tr,
            weightLabel: "lbl_weight".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: _buildPersonalData(
            context,
            weightText: "lbl_22yo".tr,
            weightLabel: "lbl_age".tr,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPersonalData(
    BuildContext context, {
    required String weightText,
    required String weightLabel,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.fillPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weightText,
                style: CustomTextStyles.titleLargePrimary.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                weightLabel,
                style: CustomTextStyles.titleLargeOnPrimaryContainerMedium
                    .copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
