import 'package:flutter/material.dart';
import 'package:meme_app/model/repoitory.dart';
import 'package:meme_app/views/screens/ex_posts_card.dart';
import 'package:meme_app/model/post.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<Posts>> data;

  // @override
  // void initState() {
  //   super.initState();
  //   // data = post?.fetchPosts() ?? Future.value([]);
  //   if (post != null) {
  //     data = post!.fetchPosts();
  //   }
  // }

  @override
  void initState() {
    super.initState();
    data = fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FutureBuilder(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return ListView.separated(
                itemBuilder: ((context, index) {
                  var post = (snapshot.data as List<Posts>)[index];
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PostCard(
                          posts: Posts(
                              id: post.id, name: post.name, url: post.url),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ]);
                }),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: (snapshot.data as List<Posts>).length,
                // controller:ScrollController(debugLabel: ),
              );
              // print(snapshot.data!.name);
              // return Text(snapshot.data!.name.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const Center(child: CircularProgressIndicator());
          }),
    ));
  }
}
