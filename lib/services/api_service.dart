import 'package:dio/dio.dart';
import '../Model/post_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<Post>> fetchPosts() async {
    try {
      print("Fetching posts from API...");
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/posts',
        options: Options(headers: {
          'Accept': 'application/json',
          'User-Agent': 'FlutterApp/1.0',
        }),
      );

      print("API Response Status Code: ${response.statusCode}");
      print("API Response Data: ${response.data}");

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data;
        return jsonData.map((e) => Post.fromJson(e as Map<String, dynamic>)).toList();
      } else {
        throw Exception("Failed to load posts: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}