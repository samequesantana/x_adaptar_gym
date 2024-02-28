import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/warming_up_stopped_oder_model.dart';

/// A provider class for the WarmingUpStoppedOderScreen.
///
/// This provider manages the state of the WarmingUpStoppedOderScreen, including the
/// current warmingUpStoppedOderModelObj

// ignore_for_file: must_be_immutable
class WarmingUpStoppedOderProvider extends ChangeNotifier {
  WarmingUpStoppedOderModel warmingUpStoppedOderModelObj =
      WarmingUpStoppedOderModel();

  @override
  void dispose() {
    super.dispose();
  }
}
