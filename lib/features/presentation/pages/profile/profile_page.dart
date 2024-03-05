import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Username',
                  style: TextStyle(color: primaryColor, fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    _openBottomModalSheet(context);
                  },
                  icon: const Icon(Icons.menu),
                  color: primaryColor,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/profile_default.png",
                  height: 100,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "0",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        sizeVer(10),
                        const Text(
                          "Posts",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    sizeHor(25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "54",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        sizeVer(10),
                        const Text(
                          "Followers",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    sizeHor(25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "123",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        sizeVer(5),
                        const Text(
                          "Following",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Username",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
                sizeVer(5),
                const Text(
                  "Bio",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GridView.builder(
              itemCount: 32,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    color: secondaryColor,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  _openBottomModalSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 150,
            decoration: BoxDecoration(color: backGroundColor.withOpacity(.8)),
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "More Options",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: primaryColor),
                      ),
                    ),
                    sizeVer(8),
                    const Divider(
                      thickness: 1,
                      color: secondaryColor,
                    ),
                    sizeVer(8),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          context.push('/edit-profile');
                        },
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: primaryColor),
                        ),
                      ),
                    ),
                    sizeVer(7),
                    const Divider(
                      thickness: 1,
                      color: secondaryColor,
                    ),
                    sizeVer(7),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: primaryColor),
                        ),
                      ),
                    ),
                    sizeVer(7),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
