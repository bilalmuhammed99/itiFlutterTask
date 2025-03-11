import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String userName;
  final String statusText;

  const StoryItem({
    Key? key,
    required this.imageUrl,
    required this.userName,
    required this.statusText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Circle avatar with ring
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blueAccent, width: 2),
          ),
          child: ClipOval(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4),
        // Name or short text
        SizedBox(
          width: 60,
          child: Text(
            userName,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
