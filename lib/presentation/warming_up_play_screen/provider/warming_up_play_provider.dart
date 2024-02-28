import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/warming_up_play_model.dart';

/// A provider class for the WarmingUpPlayScreen.
///
/// This provider manages the state of the WarmingUpPlayScreen, including the
/// current warmingUpPlayModelObj
class WarmingUpPlayProvider extends ChangeNotifier {
  WarmingUpPlayModel warmingUpPlayModelObj = WarmingUpPlayModel();

  @override
  void dispose() {
    super.dispose();
  }
}
