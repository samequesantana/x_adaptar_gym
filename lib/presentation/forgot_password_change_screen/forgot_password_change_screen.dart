import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/core/utils/validation_functions.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_floating_text_field.dart';
import 'models/forgot_password_change_model.dart';
import 'provider/forgot_password_change_provider.dart';

class ForgotPasswordChangeScreen extends StatefulWidget {
  const ForgotPasswordChangeScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordChangeScreenState createState() =>
      ForgotPasswordChangeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgotPasswordChangeProvider(),
        child: ForgotPasswordChangeScreen());
  }
}

// ignore_for_file: must_be_immutable
class ForgotPasswordChangeScreenState
    extends State<ForgotPasswordChangeScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 37.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 56.v,
                                  width: 80.h,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 128.h)),
                              SizedBox(height: 25.v),
                              Text("lbl_reset_password".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 3.v),
                              SizedBox(
                                  width: 357.h,
                                  child: Text("msg_use_your_credentials".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleLargeLexendDecaOnPrimaryContainer
                                          .copyWith(height: 1.16))),
                              SizedBox(height: 44.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                  child: Consumer<ForgotPasswordChangeProvider>(
                                      builder: (context, provider, child) {
                                    return CustomFloatingTextField(
                                        controller:
                                            provider.newpasswordController,
                                        labelText: "lbl_new_password".tr,
                                        labelStyle: CustomTextStyles
                                            .titleLargeOutfitOnPrimaryContainer,
                                        hintText: "lbl_new_password".tr,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        obscureText: provider.isShowPassword,
                                        suffix: InkWell(
                                            onTap: () {
                                              provider
                                                  .changePasswordVisibility();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgHeroiconsoutlineEyeslash,
                                                    height: 26.adaptSize,
                                                    width: 26.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 64.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  })),
                              SizedBox(height: 18.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                  child: Consumer<ForgotPasswordChangeProvider>(
                                      builder: (context, provider, child) {
                                    return CustomFloatingTextField(
                                        controller:
                                            provider.confirmpasswordController,
                                        labelText: "msg_confirm_password".tr,
                                        labelStyle: CustomTextStyles
                                            .titleLargeOutfitOnPrimaryContainer,
                                        hintText: "msg_confirm_password".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        obscureText: provider.isShowPassword1,
                                        suffix: InkWell(
                                            onTap: () {
                                              provider
                                                  .changePasswordVisibility1();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 10.h),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgHeroiconsoutlineEyeslash,
                                                    height: 26.adaptSize,
                                                    width: 26.adaptSize))),
                                        suffixConstraints:
                                            BoxConstraints(maxHeight: 64.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  })),
                              SizedBox(height: 37.v),
                              CustomElevatedButton(
                                  text: "lbl_save_changes".tr,
                                  margin: EdgeInsets.symmetric(horizontal: 6.h),
                                  onPressed: () {
                                    onTapSaveChanges(context);
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSaveChanges(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
