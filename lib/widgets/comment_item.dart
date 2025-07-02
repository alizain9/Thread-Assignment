import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../../utils/helpers.dart';

class CommentItem extends StatelessWidget {
  final String name;
  final String text;
  final int likes;
  final int dislikes;
  final int avatar;

  const CommentItem({
    super.key,
    required this.name,
    required this.text,
    required this.likes,
    required this.dislikes,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              getAvatarUrl(avatar),
              width: 36,
              height: 36,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppStyles.subtitleStyle(context).copyWith(
                  color: AppColors.textPrimary
                )),
                const SizedBox(height: 2),
                Text(text, style: AppStyles.smallStyle(context).copyWith(
                  color: AppColors.textPrimary
                )),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined, size: 16),
                    const SizedBox(width: 4),
                    Text("$likes", style: const TextStyle(fontSize: 12)),
                    const SizedBox(width: 8),
                    const Icon(Icons.thumb_down_alt_outlined, size: 16),
                    const SizedBox(width: 4),
                    Text("$dislikes", style: const TextStyle(fontSize: 12)),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}