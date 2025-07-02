import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentsEngagement extends StatelessWidget {
  const CommentsEngagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Row(
          children: [
            Icon(Icons.favorite_border),
            SizedBox(width: 4),
            Text("12")
          ],
        ),
        Row(
          children: [
            Icon(Icons.comment),
            SizedBox(width: 4),
            Text("23")
          ],
        ),
        Row(
          children: [
            Icon(Icons.ios_share),
            SizedBox(width: 4),
            Text("5")
          ],
        ),
      ],
    );
  }
}
