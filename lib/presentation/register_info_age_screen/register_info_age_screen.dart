import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/register_info_age_model.dart';
import 'provider/register_info_age_provider.dart';

class RegisterInfoAgeScreen extends StatefulWidget {
  const RegisterInfoAgeScreen({Key? key}) : super(key: key);

  @override
  RegisterInfoAgeScreenState createState() => RegisterInfoAgeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterInfoAgeProvider(),
        child: RegisterInfoAgeScreen());
  }
}

class RegisterInfoAgeScreenState extends State<RegisterInfoAgeScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 37.v),
                child: Column(children: [
                  Text("msg_how_old_are_you".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 5.v),
                  SizedBox(
                      width: 355.h,
                      child: Text("msg_age_in_years_his".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 32.v),
                  Text("lbl_19".tr,
                      style: CustomTextStyles.titleLargeBluegray7003f),
                  SizedBox(height: 21.v),
                  Text("lbl_20".tr,
                      style: CustomTextStyles.headlineSmallMontserratGray7007f),
                  SizedBox(height: 16.v),
                  Text("lbl_21".tr,
                      style: CustomTextStyles.headlineLargeMontserratGray700bf),
                  SizedBox(height: 13.v),
                  SizedBox(width: 106.h, child: Divider()),
                  Text("lbl_22".tr, style: theme.textTheme.displaySmall),
                  SizedBox(width: 106.h, child: Divider()),
                  SizedBox(height: 17.v),
                  Text("lbl_23".tr,
                      style: CustomTextStyles.headlineLargeMontserratGray700bf),
                  SizedBox(height: 9.v),
                  Text("lbl_24".tr,
                      style: CustomTextStyles.headlineSmallMontserratGray5007f),
                  SizedBox(height: 16.v),
                  Text("lbl_25".tr,
                      style: CustomTextStyles.titleLargeGray3003f),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "lbl_contineu".tr,
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                      onPressed: () {
                        onTapContineu(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the registerInfoHeightScreen when the action is triggered.
  onTapContineu(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerInfoHeightScreen,
    );
  }
}
