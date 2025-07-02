import 'package:flutter/material.dart';
import 'package:threads_assignment/widgets/comment_input.dart';
import 'package:threads_assignment/widgets/comments_engagement.dart';
import '../../services/mock_data.dart';
import '../../widgets/comment_item.dart';
import '../../utils/constants.dart';
import '../Model/post_model.dart';
import '../model/comment_model.dart';
import '../widgets/post_header.dart';

class DetailScreen extends StatefulWidget {
  final Post post;

  const DetailScreen({super.key, required this.post});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late final List<Comment> comments;

  @override
  void initState() {
    super.initState();
    comments = MockData.getComments(); // Load dummy comments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Post", style: AppStyles.titleStyle(context)),
      ),
      body: Column(
        children: [
          // Post Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: PostHeader(
              userId: widget.post.userId,
              title: widget.post.title,
              body: widget.post.body,
              isDetailView: true,
            ),
          ),

          const SizedBox(height: 16),

          // Engagement Stats
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CommentsEngagement(),
          ),

          const Divider(),

          // Comments Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text("Comments",
                    style: AppStyles.subtitleStyle(context).copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary
                    )),
              ],
            ),
          ),

          const SizedBox(height: 8),

          // Comment List
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final c = comments[index];
                return CommentItem(
                  name: c.name,
                  text: c.text,
                  likes: c.likes,
                  dislikes: c.dislikes,
                  avatar: c.avatar,
                );
              },
            ),
          ),

          // Comment Input
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CommentInput()
          )
        ],
      ),
    );
  }
}