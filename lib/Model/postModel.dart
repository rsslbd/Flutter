// To parse this JSON data, do
//
//     final postModel1 = postModel1FromJson(jsonString);

import 'dart:convert';

PostModel1 postModel1FromJson(String str) => PostModel1.fromJson(json.decode(str));
List<PostModel1>postsFromJson(String str)=>List<PostModel1>.from(json.decode(str).map((x)=>PostModel1.fromJson(x)));
String postModel1ToJson(PostModel1 data) => json.encode(data.toJson());

class PostModel1 {
    int? id;
    String? title;
    String? body;

    PostModel1({
        this.id,
        this.title,
        this.body,
    });

    factory PostModel1.fromJson(Map<String, dynamic> json) => PostModel1(
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
    };
}
