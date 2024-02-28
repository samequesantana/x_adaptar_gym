import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          width: 132.h,
          child: Text(
            text,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.headlineLargeMontserratGray100.copyWith(
              color: appTheme.gray100,
            ),
          ),
        ),
      ),
    );
  }
}
