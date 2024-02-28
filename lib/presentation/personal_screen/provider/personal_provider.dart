import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/personal_model.dart';

/// A provider class for the PersonalScreen.
///
/// This provider manages the state of the PersonalScreen, including the
/// current personalModelObj
class PersonalProvider extends ChangeNotifier {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  PersonalModel personalModelObj = PersonalModel();

  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    emailController.dispose();
  }
}
