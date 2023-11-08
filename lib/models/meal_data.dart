import 'package:spotify_clone_app/models/post_model/meal/data.dart';

class MealData {
  final CurrentMealData? currentMealData;

  MealData([this.currentMealData]);

  CurrentMealData getCurrentMealData() => currentMealData!;
}
