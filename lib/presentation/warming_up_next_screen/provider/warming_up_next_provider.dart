import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/warming_up_next_model.dart';

/// A provider class for the WarmingUpNextScreen.
///
/// This provider manages the state of the WarmingUpNextScreen, including the
/// current warmingUpNextModelObj

// ignore_for_file: must_be_immutable
class WarmingUpNextProvider extends ChangeNotifier {
  WarmingUpNextModel warmingUpNextModelObj = WarmingUpNextModel();

  @override
  void dispose() {
    super.dispose();
  }
}
