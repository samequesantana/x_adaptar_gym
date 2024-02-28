import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/congratulations_model.dart';
import 'provider/congratulations_provider.dart';

class CongratulationsScreen extends StatefulWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  CongratulationsScreenState createState() => CongratulationsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CongratulationsProvider(),
        child: CongratulationsScreen());
  }
}

class CongratulationsScreenState extends State<CongratulationsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: 346.h,
                padding: EdgeInsets.symmetric(vertical: 10.v),
                child: Column(children: [
                  SizedBox(height: 29.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorPrimary,
                      height: 120.adaptSize,
                      width: 120.adaptSize),
                  SizedBox(height: 21.v),
                  SizedBox(
                      width: 209.h,
                      child: Text("msg_congratulations".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargeOnPrimaryContainer))
                ])),
            bottomNavigationBar: _buildNextStepsButton(context)));
  }

  /// Section Widget
  Widget _buildNextStepsButton(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        text: "lbl_next_steps".tr,
        margin: EdgeInsets.only(left: 39.h, right: 39.h, bottom: 19.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargeBlack900,
        onPressed: () {
          onTapNextStepsButton(context);
        });
  }

  /// Navigates to the weightliftingResumeScreen when the action is triggered.
  onTapNextStepsButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.weightliftingResumeScreen,
    );
  }
}
