import 'package:flutter/material.dart';
import 'package:spotify_clone_app/models/post_model/meal/data.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.currentMealData,
  });

  final CurrentMealData currentMealData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.only(left: 18, right: 18, top: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Id: ${currentMealData.data.totalPages}',
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
