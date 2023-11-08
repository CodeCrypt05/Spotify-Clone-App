import 'dart:convert';

import 'package:spotify_clone_app/models/meal_data.dart';
import 'package:http/http.dart' as http;
import 'package:spotify_clone_app/models/post_model/meal/data.dart';

class FetchMealAPI {
  MealData? mealData;

  String apiURl(int pageNo) {
    String URL =
        "https://app.apnabillbook.com/api/product?storeId=4ad3de84-bcaa-4bb2-9eb9-1846844e3314&page=$pageNo&pageSize=10&productCategoryId&date=2023-11-01+21%3A49%3A44.451";
    return URL;
  }

  String baseURL = "";

  Future<MealData> mealAPI(int pageNo) async {
    var response = await http.get(Uri.parse(apiURl(pageNo)));
    var data = jsonDecode(response.body);
    print(data);
    mealData = MealData(CurrentMealData.fromJson(data));
    return MealData();
  }
}
