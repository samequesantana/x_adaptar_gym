import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_elevated_button.dart';
import 'package:x_adaptar_gym_appsv2/widgets/custom_icon_button.dart';
import 'models/upload_photo_model.dart';
import 'provider/upload_photo_provider.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  UploadPhotoScreenState createState() => UploadPhotoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UploadPhotoProvider(),
      child: UploadPhotoScreen(),
    );
  }
}

class UploadPhotoScreenState extends State<UploadPhotoScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 21.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 59.v),
              Text(
                "msg_enter_your_photo".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 8.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.symmetric(horizontal: 31.h),
                child: Text(
                  "msg_want_a_photo_for".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles
                      .titleLargeLexendDecaOnPrimaryContainerRegular,
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                height: 130.v,
                width: 135.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 130.v,
                        width: 135.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(
                            67.h,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 5.h,
                        bottom: 7.v,
                      ),
                      child: CustomIconButton(
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration:
                            IconButtonStyleHelper.outlineOnErrorContainer,
                        alignment: Alignment.bottomRight,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                text: "lbl_save_changes".tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
