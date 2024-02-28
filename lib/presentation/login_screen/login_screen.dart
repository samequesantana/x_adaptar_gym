import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/core/utils/validation_functions.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_title_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_floating_text_field.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_outlined_button.dart';
import 'models/login_model.dart';
import 'provider/login_provider.dart';
import 'package:x_adaptar_gym_appsv2/domain/googleauth/google_auth_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
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
                              Text("lbl_welcome_back".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 3.v),
                              Container(
                                  width: 302.h,
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 21.h),
                                  child: Text("msg_use_your_credentials".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .titleLargeLexendDecaOnPrimaryContainer
                                          .copyWith(height: 1.16))),
                              SizedBox(height: 43.v),
                              _buildEmailField(context),
                              SizedBox(height: 18.v),
                              _buildPasswordField(context),
                              SizedBox(height: 12.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .titleMediumLexendDecaPrimary))),
                              SizedBox(height: 11.v),
                              _buildLoginButton(context),
                              SizedBox(height: 24.v),
                              Text("lbl_or_login_with".tr,
                                  style: CustomTextStyles
                                      .headlineSmallOnPrimaryContainer),
                              SizedBox(height: 14.v),
                              // _buildGoogleLoginButton(context),
                              SizedBox(height: 86.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: CustomTextStyles
                                                .titleLargeLexendDecaffffffff),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleLargeLexendDecaffffffffMedium)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 8.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitleImage(imagePath: ImageConstant.imgContrast));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Selector<LoginProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailFieldController,
        builder: (context, emailFieldController, child) {
          return CustomFloatingTextField(
              controller: emailFieldController,
              labelText: "lbl_email_address".tr,
              labelStyle:
                  CustomTextStyles.titleLargeLexendDecaOnPrimaryContainerMedium,
              // hintText: "lbl_email_address".tr,
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
  Widget _buildPasswordField(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, provider, child) {
      return CustomFloatingTextField(
          controller: provider.passwordFieldController,
          labelText: "lbl_password".tr,
          labelStyle: CustomTextStyles.titleLargeOutfitOnPrimaryContainer,
          // hintText: "lbl_password".tr,
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
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(text: "msg_login_my_account".tr);
  }

  /// Section Widget
  Widget _buildGoogleLoginButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "msg_continue_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleOriginal,
                height: 36.adaptSize,
                width: 36.adaptSize)),
        onPressed: () {
          onTapGoogleLoginButton(context);
        });
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  onTapGoogleLoginButton(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Navigates to the registerLoginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerLoginScreen,
    );
  }
}
