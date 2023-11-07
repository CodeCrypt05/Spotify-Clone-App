import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  final String userId;
  final String id;
  final String title;
  final String body;

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
                    'User Id: ' + userId,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                  Text(
                    'Title: ' + title,
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                  Text(
                    'Description: ' + body,
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
