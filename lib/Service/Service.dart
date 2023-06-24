import 'dart:convert';
import 'dart:developer';
import 'dart:html';
import 'package:my_app/Model/postModel.dart';
import 'package:http/http.dart' as http;
class ApiService{
  Future<List<PostModel1>?> getPosts() async {
    try {
      var url = Uri.parse("http://192.168.20.38:8080/api/posts");
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<PostModel1> _model = postsFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
Future<void> deletePosts(int? id) async {
    try {
      var url = Uri.parse(
         "http://192.168.20.38:8080/api/posts/" + '${id}');
      var response = await http.delete(url);

      // Response res = await delete('$apiUrl/$id');

      if (response.statusCode == 200) {
        print("Case deleted");
      } else {
        throw "Failed to delete a case.";
      }
    } catch (e) {
      log(e.toString());
    }
  }

 Future<void> createPosts(PostModel1 postModel1) async {
    try {
      var url = Uri.parse("http://192.168.20.38:8080/api/posts");
      var response = await http.post(url,
      headers:{"Content-Type":"application/json"},
      body: jsonEncode(postModel1));

      if (response.statusCode == 200) {
      print("Updated");
      }else{
        print("Updated fail");
      }
    } catch (e) {
      log(e.toString());
    }
  }
   
}