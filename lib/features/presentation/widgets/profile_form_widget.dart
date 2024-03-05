import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';

class ProfileFormWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? title;
  const ProfileFormWidget({Key? key, this.title, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: const TextStyle(color: primaryColor, fontSize: 16),
        ),
        sizeVer(10),
        TextFormField(
          controller: controller,
          style: const TextStyle(color: primaryColor),
          decoration: const InputDecoration(
              border: InputBorder.none,
              labelStyle: TextStyle(color: primaryColor)),
        ),
        const Divider(
          color: secondaryColor,
        )
      ],
    );
  }
}
