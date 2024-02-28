import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/register_info_sex_model.dart';
import 'provider/register_info_sex_provider.dart';

class RegisterInfoSexScreen extends StatefulWidget {
  const RegisterInfoSexScreen({Key? key}) : super(key: key);

  @override
  RegisterInfoSexScreenState createState() => RegisterInfoSexScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterInfoSexProvider(),
        child: RegisterInfoSexScreen());
  }
}

class RegisterInfoSexScreenState extends State<RegisterInfoSexScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 37.v),
                child: Column(children: [
                  Text("msg_tell_us_about_yourself".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 362.h,
                      child: Text("msg_to_give_you_a_better".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 29.v),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 115.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 27.h, vertical: 4.v),
                      decoration: AppDecoration.outlineOnPrimaryContainer1
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgImage7,
                            height: 74.adaptSize,
                            width: 74.adaptSize),
                        SizedBox(height: 10.v),
                        Text("lbl_man".tr, style: theme.textTheme.bodyLarge),
                        SizedBox(height: 5.v)
                      ])),
                  SizedBox(height: 34.v),
                  SizedBox(
                      height: 126.v,
                      width: 132.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 31.h, vertical: 9.v),
                                decoration: AppDecoration
                                    .outlineOnPrimaryContainer1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 78.v),
                                      Text("lbl_woman".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgImage8,
                            height: 92.v,
                            width: 74.h,
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 91.v),
                  CustomElevatedButton(
                      text: "lbl_contineu".tr,
                      margin: EdgeInsets.symmetric(horizontal: 8.h),
                      onPressed: () {
                        onTapContineu(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the uploadPhotoScreen when the action is triggered.
  onTapContineu(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.uploadPhotoScreen,
    );
  }
}
