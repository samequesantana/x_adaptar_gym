import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/search_results_model.dart';

/// A provider class for the SearchResultsScreen.
///
/// This provider manages the state of the SearchResultsScreen, including the
/// current searchResultsModelObj
class SearchResultsProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  SearchResultsModel searchResultsModelObj = SearchResultsModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }
}
