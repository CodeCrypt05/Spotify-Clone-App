import 'package:flutter/material.dart';
import 'package:spotify_clone_app/models/meal_data.dart';
import 'package:spotify_clone_app/services/fetch_meal_api.dart';
import 'package:spotify_clone_app/widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final mealData = MealData();
  FetchMealAPI fetchMealAPI = FetchMealAPI();

  MealData getData() {
    return mealData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Api'),
      ),
      body: _postBuilder(context),
    );
  }

  // showing post data
  FutureBuilder<MealData> _postBuilder(BuildContext context) {
    return FutureBuilder<MealData>(
      future: fetchMealAPI.mealAPI(1),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return CardWidget(
                currentMealData: getData().getCurrentMealData(),
              );
            },
          );
        }
      },
    );
  }
}
