import '../../../core/app_export.dart';
import 'workoutlist_item_model.dart';
import 'trainingcomponent_item_model.dart';

class ShapeBodyWarkoutCategoriesModel {
  List<WorkoutlistItemModel> workoutlistItemList = [
    WorkoutlistItemModel(
        image: ImageConstant.imgRectangle6, text1: "Weightlifting Basic"),
    WorkoutlistItemModel(
        image: ImageConstant.imgRectangle6171x319,
        text1: "Learn the Basic of Training")
  ];

  List<TrainingcomponentItemModel> trainingcomponentItemList = [
    TrainingcomponentItemModel(
        trainingImage: ImageConstant.imgRectangle6,
        trainingText: "Learn the Basic of Training"),
    TrainingcomponentItemModel(
        trainingImage: ImageConstant.imgRectangle6171x319,
        trainingText: "Learn the Basic of Training")
  ];
}
