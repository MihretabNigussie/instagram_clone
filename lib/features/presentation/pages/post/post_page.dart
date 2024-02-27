import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: secondaryColor.withOpacity(.3),
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.upload,
          color: primaryColor,
          size: 50,
        ),
      ),
    );
  }
}
