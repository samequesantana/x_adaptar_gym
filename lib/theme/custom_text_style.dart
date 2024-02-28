import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmallBlack900 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeMontserratGray100 =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        color: appTheme.gray100,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeMontserratGray700bf =>
      theme.textTheme.headlineLarge!.montserrat.copyWith(
        color: appTheme.gray700Bf,
        fontSize: 30.fSize,
      );
  static get headlineSmallMontserratBlack900 =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.black900,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMontserratGray100 =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.gray100,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallMontserratGray5007f =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.gray5007f,
        fontSize: 25.fSize,
      );
  static get headlineSmallMontserratGray7007f =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: appTheme.gray7007f,
        fontSize: 25.fSize,
      );
  static get headlineSmallMontserratOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineSmallOutfit => theme.textTheme.headlineSmall!.outfit;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBluegray7003f => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray7003f,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray3003f => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray3003f,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLexendDecaOnErrorContainer =>
      theme.textTheme.titleLarge!.lexendDeca.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 22.fSize,
      );
  static get titleLargeLexendDecaOnPrimaryContainer =>
      theme.textTheme.titleLarge!.lexendDeca.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLexendDecaOnPrimaryContainerMedium =>
      theme.textTheme.titleLarge!.lexendDeca.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeLexendDecaOnPrimaryContainerRegular =>
      theme.textTheme.titleLarge!.lexendDeca.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLexendDecaffffffff =>
      theme.textTheme.titleLarge!.lexendDeca.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLexendDecaffffffffMedium =>
      theme.textTheme.titleLarge!.lexendDeca.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer22 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 22.fSize,
      );
  static get titleLargeOnPrimaryContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainerMedium =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargeOutfitOnPrimaryContainer =>
      theme.textTheme.titleLarge!.outfit.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
      );
  static get titleLargeRobotoOnPrimaryContainer =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray100_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray100,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleMediumLexendDeca =>
      theme.textTheme.titleMedium!.lexendDeca.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLexendDecaPrimary =>
      theme.textTheme.titleMedium!.lexendDeca.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray50003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLexendDecaOnPrimaryContainer =>
      theme.textTheme.titleSmall!.lexendDeca.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainerMedium_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallffe32020 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFE32020),
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get lexendDeca {
    return copyWith(
      fontFamily: 'Lexend Deca',
    );
  }
}
