import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:meme_app/model/post.dart';

Future<List<Posts>> fetchPosts() async {
  final responses =
      await http.get(Uri.parse('https://api.imgflip.com/get_memes'));
  print(responses.statusCode);
  // print(responses.body);

  if (responses.statusCode == 200) {
    var getPostData = json.decode(responses.body);
    var memes = getPostData['data']['memes'] as List;
    var listmemes = memes.map((e) => Posts.fromJson(e)).toList();
    // final listImage =
    //     (getPostData as Map<String, dynamic>)['data']['memes'] as List;
    // List<Posts> listPost = listImage.map((e) => Posts.fromJson(e)).toList();
    print(listmemes);
    return listmemes;
  } else {
    throw Exception('Failed load data');
  }
}
