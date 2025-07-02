// /widgets/post_header.dart

import 'package:flutter/material.dart';
import '../../utils/helpers.dart';
import '../../utils/constants.dart';

class PostHeader extends StatelessWidget {
  final int userId;
  final String title;
  final String body;
  final bool isDetailView;

  const PostHeader({
    super.key,
    required this.userId,
    required this.title,
    required this.body,
    this.isDetailView = false, // Default to list mode
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Avatar Column
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(
                getAvatarUrl(userId),
                width: AppSizes.avatarSize,
                height: AppSizes.avatarSize,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 48), // Space under avatar
          ],
        ),

        const SizedBox(width: 12),

        // Title & Body
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("User $userId", style: AppStyles.titleStyle(context)),
              const SizedBox(height: 6),
              Text(
                title,
                style: AppStyles.subtitleStyle(context).copyWith(
                  color: isDetailView ? AppColors.textPrimary : AppColors.textSecondary,
                  fontSize: isDetailView ? 16 : 15,
                  fontWeight: isDetailView ? FontWeight.normal : FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                body,
                maxLines: isDetailView ? null : 2, // Show all lines in detail
                overflow: isDetailView ? TextOverflow.clip : TextOverflow.ellipsis,
                style: AppStyles.bodyStyle(context).copyWith(
                  color: isDetailView ? AppColors.textPrimary : AppColors.textSecondary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}