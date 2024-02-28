import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'models/register_info_weight_model.dart';
import 'provider/register_info_weight_provider.dart';

class RegisterInfoWeightScreen extends StatefulWidget {
  const RegisterInfoWeightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RegisterInfoWeightScreenState createState() =>
      RegisterInfoWeightScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterInfoWeightProvider(),
      child: RegisterInfoWeightScreen(),
    );
  }
}

class RegisterInfoWeightScreenState extends State<RegisterInfoWeightScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 40.v,
          ),
          child: Column(
            children: [
              Text(
                "msg_what_is_your_weight".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 2.v),
              SizedBox(
                width: 351.h,
                child: Text(
                  "msg_weight_in_kg_don_t".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
              Spacer(
                flex: 25,
              ),
              _buildFrame(context),
              SizedBox(height: 10.v),
              CustomImageView(
                imagePath: ImageConstant.imgPolygon2,
                height: 44.adaptSize,
                width: 44.adaptSize,
                radius: BorderRadius.circular(
                  6.h,
                ),
              ),
              Spacer(
                flex: 40,
              ),
              CustomElevatedButton(
                text: "lbl_contineu".tr,
                margin: EdgeInsets.symmetric(horizontal: 4.h),
              ),
              Spacer(
                flex: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: Text(
            "lbl_77".tr,
            style: CustomTextStyles.titleLargeBluegray7003f,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 11.v),
          child: Text(
            "lbl_78".tr,
            style: CustomTextStyles.headlineSmallMontserratGray7007f,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 5.v),
          child: Text(
            "lbl_79".tr,
            style: CustomTextStyles.headlineLargeMontserratGray700bf,
          ),
        ),
        Text(
          "lbl_80".tr,
          style: theme.textTheme.displaySmall,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 5.v),
          child: Text(
            "lbl_81".tr,
            style: CustomTextStyles.headlineLargeMontserratGray700bf,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 11.v),
          child: Text(
            "lbl_82".tr,
            style: CustomTextStyles.headlineSmallMontserratGray5007f,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: Text(
            "lbl_83".tr,
            style: CustomTextStyles.titleLargeBluegray7003f,
          ),
        ),
      ],
    );
  }
}
