import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/appbar_title_image.dart';
import 'package:x_adaptar_gym_appsv2/widgets/app_bar/custom_app_bar.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_pin_code_text_field.dart';
import 'models/forgot_password_code_model.dart';
import 'provider/forgot_password_code_provider.dart';

class ForgotPasswordCodeScreen extends StatefulWidget {
  const ForgotPasswordCodeScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordCodeScreenState createState() =>
      ForgotPasswordCodeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgotPasswordCodeProvider(),
        child: ForgotPasswordCodeScreen());
  }
}

class ForgotPasswordCodeScreenState extends State<ForgotPasswordCodeScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 25.v),
                child: Column(children: [
                  Text("lbl_enter_otp".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 11.v),
                  Container(
                      width: 301.h,
                      margin: EdgeInsets.only(left: 19.h, right: 25.h),
                      child: Text("msg_an_4_digit_code".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .titleLargeLexendDecaOnPrimaryContainerRegular)),
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Selector<ForgotPasswordCodeProvider,
                              TextEditingController?>(
                          selector: (context, provider) =>
                              provider.otpController,
                          builder: (context, otpController, child) {
                            return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                });
                          })),
                  SizedBox(height: 12.v),
                  Text("lbl_50_00".tr,
                      style: CustomTextStyles.titleMediumLexendDeca),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                      text: "lbl_submit".tr,
                      onPressed: () {
                        onTapSubmit(context);
                      }),
                  Spacer(),
                  SizedBox(height: 7.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtSendAgaint(context);
                      },
                      child: Text("lbl_send_againt".tr,
                          style: CustomTextStyles
                              .titleLargeLexendDecaOnPrimaryContainer))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgContrast,
            margin: EdgeInsets.only(left: 166.h)));
  }

  /// Navigates to the forgotPasswordChangeScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordChangeScreen,
    );
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtSendAgaint(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
