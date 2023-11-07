import 'package:flutter/material.dart';
import 'package:spotify_clone_app/models/post_model/post_model.dart';
import 'package:spotify_clone_app/services/fetch_api.dart';
import 'package:spotify_clone_app/widgets/card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FetchAPI fetchAPI = FetchAPI();
  List<PostModel> postList = [];

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
  FutureBuilder<List<PostModel>> _postBuilder(BuildContext context) {
    return FutureBuilder<List<PostModel>>(
      future: fetchAPI.postData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return CardWidget(
                userId: postList[index].id.toString(),
                id: postList[index].userId.toString(),
                title: postList[index].title.toString(),
                body: postList[index].body.toString(),
              );
            },
          );
        }
      },
    );
  }
}
