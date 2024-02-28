import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/like_model.dart';

/// A provider class for the LikeScreen.
///
/// This provider manages the state of the LikeScreen, including the
/// current likeModelObj
class LikeProvider extends ChangeNotifier {
  LikeModel likeModelObj = LikeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
