import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myui/getx/model/post.dart';
class DataServices{
  var url=Uri.parse('https://jsonplaceholder.typicode.com/posts');
  Future<List<Post>> getposts()async{
    var response=await http.get(url);
    return postFromJson(response.body);
  }
}