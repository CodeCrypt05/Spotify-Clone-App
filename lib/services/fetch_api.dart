import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spotify_clone_app/models/post_model/post_model.dart';

class FetchAPI {
  static List<PostModel> postModel = [];
  String baseUrl = "https://jsonplaceholder.typicode.com";

  Future<List<PostModel>> postData() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));
    var data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      for (Map i in data) {
        postModel.add(PostModel.fromJson(i));
      }
      return postModel;
    } else {}
    throw Exception('Failed to load posts');
  }
}
