import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/core/utils/validation_functions.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_title_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_floating_text_field.dart';
import 'models/register_login_model.dart';
import 'provider/register_login_provider.dart';

class RegisterLoginScreen extends StatefulWidget {
  const RegisterLoginScreen({Key? key}) : super(key: key);

  @override
  RegisterLoginScreenState createState() => RegisterLoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterLoginProvider(),
        child: RegisterLoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class RegisterLoginScreenState extends State<RegisterLoginScreen> {
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
            appBar: _buildAppBar(context),
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
                                horizontal: 22.h, vertical: 25.v),
                            child: Column(children: [
                              Text("lbl_welcome".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 3.v),
                              Container(
                                  width: 286.h,
                                  margin:
                                      EdgeInsets.only(left: 30.h, right: 29.h),
                                  child: Text("msg_use_your_credentials2".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleLargeLexendDecaOnPrimaryContainer
                                          .copyWith(height: 1.16))),
                              SizedBox(height: 48.v),
                              _buildUserName(context),
                              SizedBox(height: 18.v),
                              _buildEmail(context),
                              SizedBox(height: 18.v),
                              _buildPassword(context),
                              SizedBox(height: 32.v),
                              _buildCreateAccount(context),
                              Spacer(),
                              SizedBox(height: 8.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean3(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: CustomTextStyles
                                                .titleLargeLexendDecaffffffff),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: CustomTextStyles
                                                .titleLargeLexendDecaffffffffMedium)
                                      ]),
                                      textAlign: TextAlign.left))
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgContrast));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Selector<RegisterLoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.userNameController,
        builder: (context, userNameController, child) {
          return CustomFloatingTextField(
              controller: userNameController,
              labelText: "lbl_username".tr,
              labelStyle:
                  CustomTextStyles.titleLargeLexendDecaOnPrimaryContainerMedium,
              hintText: "lbl_username".tr,
              hintStyle:
                  CustomTextStyles.titleLargeLexendDecaOnPrimaryContainerMedium,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkBlueA200,
                      height: 22.adaptSize,
                      width: 22.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 63.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<RegisterLoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomFloatingTextField(
              controller: emailController,
              labelText: "lbl_email_address".tr,
              labelStyle:
                  CustomTextStyles.titleLargeLexendDecaOnPrimaryContainerMedium,
              hintText: "lbl_email_address".tr,
              hintStyle:
                  CustomTextStyles.titleLargeLexendDecaOnPrimaryContainerMedium,
              textInputType: TextInputType.emailAddress,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkBlueA200,
                      height: 22.adaptSize,
                      width: 22.adaptSize)),
              suffixConstraints: BoxConstraints(maxHeight: 64.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<RegisterLoginProvider>(builder: (context, provider, child) {
      return CustomFloatingTextField(
          controller: provider.passwordController,
          labelText: "lbl_password".tr,
          labelStyle: CustomTextStyles.titleLargeOutfitOnPrimaryContainer,
          hintText: "lbl_password".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: provider.isShowPassword,
          suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgHeroiconsoutlineEyeslash,
                      height: 26.adaptSize,
                      width: 26.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 64.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          });
    });
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_create_account".tr,
        onPressed: () {
          onTapCreateAccount(context);
        });
  }

  /// Navigates to the registerInfoSexScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerInfoSexScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
