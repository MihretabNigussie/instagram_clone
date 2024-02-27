import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15 , top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/ic_instagram.svg",
                  color: primaryColor,
                  height: 32,
                ),
                const Icon(
                  Icons.message_outlined,
                  color: primaryColor,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  sizeHor(10),
                  Image.asset(
                    "assets/profile_default.png",
                    height: 32,
                  ),
                  sizeHor(10),
                  const Text(
                    "Username",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Icon(
                Icons.more_vert,
                color: primaryColor,
              )
            ],
          ),
          sizeVer(10),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            color: secondaryColor,
          ),
          sizeVer(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.favorite_border,
                    color: primaryColor,
                  ),
                  sizeHor(10),
                  const Icon(
                    Icons.chat_bubble_outline,
                    color: primaryColor,
                  ),
                  sizeHor(10),
                  const Icon(
                    Icons.send,
                    color: primaryColor,
                  ),
                ],
              ),
              const Icon(
                Icons.bookmark_border,
                color: primaryColor,
              ),
            ],
          ),
          sizeVer(5),
          Row(
            children: [
              const Text(
                "Username",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              sizeHor(10),
              const Text(
                "Some description here...",
                style: TextStyle(
                  color: primaryColor,
                ),
              )
            ],
          ),
          sizeVer(5),
          const Text(
            "View all 100 comments",
            style: TextStyle(
              color: darkGreyColor,
            ),
          ),
          sizeVer(5),
          const Text(
            "27/2/2024",
            style: TextStyle(
              color: darkGreyColor,
            ),
          ),
        ],
      ),
    ));
  }
}
