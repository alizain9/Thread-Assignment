// widgets/post_card.dart

import 'package:flutter/material.dart';
import 'package:threads_assignment/widgets/post_header.dart';
import '../../utils/helpers.dart';
import '../../utils/constants.dart';
import '../Model/post_model.dart';
import '../screens/detail_screen.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailScreen(post: post),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: PostHeader(
            userId: post.userId,
            title: post.title,
            body: post.body,
        )
      ),
    );
  }
}