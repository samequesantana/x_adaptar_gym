import 'package:flutter/material.dart';
import 'package:x_adaptar_gym_appsv2/core/app_export.dart';
import 'models/torkout_categories_model.dart';
import 'models/workoutcomponent_item_model.dart';
import 'provider/torkout_categories_provider.dart';
import 'widgets/workoutcomponent_item_widget.dart';

class TorkoutCategoriesPage extends StatefulWidget {
  const TorkoutCategoriesPage({Key? key}) : super(key: key);

  @override
  TorkoutCategoriesPageState createState() => TorkoutCategoriesPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TorkoutCategoriesProvider(),
        child: TorkoutCategoriesPage());
  }
}

class TorkoutCategoriesPageState extends State<TorkoutCategoriesPage>
    with AutomaticKeepAliveClientMixin<TorkoutCategoriesPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnErrorContainer,
                child: Column(children: [
                  SizedBox(height: 20.v),
                  _buildWorkoutComponent(context)
                ]))));
  }

  /// Section Widget
  Widget _buildWorkoutComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Consumer<TorkoutCategoriesProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.v);
              },
              itemCount: provider
                  .torkoutCategoriesModelObj.workoutcomponentItemList.length,
              itemBuilder: (context, index) {
                WorkoutcomponentItemModel model = provider
                    .torkoutCategoriesModelObj.workoutcomponentItemList[index];
                return WorkoutcomponentItemWidget(model, onTapImgImage: () {
                  onTapImgImage(context);
                });
              });
        }));
  }

  /// Navigates to the weightliftingStartScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.weightliftingStartScreen,
    );
  }
}
