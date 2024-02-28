import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/warming_up_stopped_model.dart';

/// A provider class for the WarmingUpStoppedScreen.
///
/// This provider manages the state of the WarmingUpStoppedScreen, including the
/// current warmingUpStoppedModelObj

// ignore_for_file: must_be_immutable
class WarmingUpStoppedProvider extends ChangeNotifier {
  WarmingUpStoppedModel warmingUpStoppedModelObj = WarmingUpStoppedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
