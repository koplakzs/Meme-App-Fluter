import 'package:flutter/material.dart';
import 'package:meme_app/model/post.dart';

class PostCard extends StatelessWidget {
  final Posts posts;
  const PostCard({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      color: const Color.fromARGB(255, 69, 69, 68),
      child: Column(
        children: [
          Image.network(
            posts.url.toString(),
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(posts.name.toString())
        ],
      ),
    );

    // InkWell(
    //   onTap: () {
    //     Navigator.push(context, MaterialPageRoute(builder: ((context) {
    //       return DetailPage(posts: posts);
    //     })));
    //   },
    //   child: Container(
    //     decoration:
    //         const BoxDecoration(color: Color.fromARGB(255, 135, 135, 135)),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text(
    //           posts.title,
    //           style: const TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         Text(posts.body)
    //       ],
    //     ),
    //   ),
    // );
  }
}
