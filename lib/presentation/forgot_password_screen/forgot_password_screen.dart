import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/forgot_password_model.dart';
import 'provider/forgot_password_provider.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgotPasswordProvider(),
        child: ForgotPasswordScreen());
  }
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 37.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgContrast,
                      height: 56.v,
                      width: 80.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 122.h)),
                  SizedBox(height: 28.v),
                  Text("msg_forgot_password".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(
                      width: 341.h,
                      child: Text("msg_don_t_worry_it".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles
                              .titleLargeLexendDecaOnPrimaryContainerRegular)),
                  SizedBox(height: 32.v),
                  _buildForgotPasswordStack(context),
                  SizedBox(height: 30.v),
                  CustomElevatedButton(
                      text: "lbl_submit".tr,
                      buttonTextStyle: CustomTextStyles.headlineSmallOutfit,
                      onPressed: () {
                        onTapSubmit(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildForgotPasswordStack(BuildContext context) {
    return SizedBox(
        height: 64.v,
        width: 346.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 29.h, bottom: 12.v),
                  child: Text("msg_jefro_siroupku_gmail_com".tr,
                      style: CustomTextStyles
                          .titleLargeLexendDecaOnPrimaryContainerMedium))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 64.v,
                  width: 346.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 1.v),
                            decoration: AppDecoration.outlineOnPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 115.h,
                                      child: Divider(
                                          color: theme
                                              .colorScheme.onErrorContainer,
                                          indent: 16.h)),
                                  SizedBox(height: 12.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgCheckmarkBlueA200,
                                      height: 22.adaptSize,
                                      width: 22.adaptSize,
                                      alignment: Alignment.centerRight),
                                  SizedBox(height: 15.v)
                                ]))),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 29.h),
                            child: Text("lbl_email_address".tr,
                                style: CustomTextStyles
                                    .titleSmallLexendDecaOnPrimaryContainer)))
                  ])))
        ]));
  }

  /// Navigates to the forgotPasswordCodeScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgotPasswordCodeScreen,
    );
  }
}
