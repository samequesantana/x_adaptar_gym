import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/register_info_height_model.dart';
import 'provider/register_info_height_provider.dart';

class RegisterInfoHeightScreen extends StatefulWidget {
  const RegisterInfoHeightScreen({Key? key}) : super(key: key);

  @override
  RegisterInfoHeightScreenState createState() =>
      RegisterInfoHeightScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RegisterInfoHeightProvider(),
        child: RegisterInfoHeightScreen());
  }
}

class RegisterInfoHeightScreenState extends State<RegisterInfoHeightScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 40.v),
                child: Column(children: [
                  Text("msg_what_is_your_height".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 2.v),
                  SizedBox(
                      width: 350.h,
                      child: Text("msg_height_in_cm_don_t".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 32.v),
                  Text("lbl_177".tr,
                      style: CustomTextStyles.titleLargeBluegray7003f),
                  SizedBox(height: 21.v),
                  Text("lbl_178".tr,
                      style: CustomTextStyles.headlineSmallMontserratGray7007f),
                  SizedBox(height: 16.v),
                  Text("lbl_179".tr,
                      style: CustomTextStyles.headlineLargeMontserratGray700bf),
                  SizedBox(height: 13.v),
                  SizedBox(width: 106.h, child: Divider()),
                  Text("lbl_180".tr, style: theme.textTheme.displaySmall),
                  SizedBox(width: 106.h, child: Divider()),
                  SizedBox(height: 17.v),
                  Text("lbl_181".tr,
                      style: CustomTextStyles.headlineLargeMontserratGray700bf),
                  SizedBox(height: 9.v),
                  Text("lbl_182".tr,
                      style: CustomTextStyles.headlineSmallMontserratGray5007f),
                  SizedBox(height: 16.v),
                  Text("lbl_183".tr,
                      style: CustomTextStyles.titleLargeBluegray7003f),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "lbl_contineu".tr,
                      margin: EdgeInsets.symmetric(horizontal: 3.h),
                      onPressed: () {
                        onTapContineu(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the registerInfoWeightScreen when the action is triggered.
  onTapContineu(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerInfoWeightScreen,
    );
  }
}
