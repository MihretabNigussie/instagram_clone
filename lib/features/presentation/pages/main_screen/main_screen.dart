import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';
import 'package:instagram_clone/features/presentation/pages/activity/activity_page.dart';
import 'package:instagram_clone/features/presentation/pages/home/home_page.dart';
import 'package:instagram_clone/features/presentation/pages/post/post_page.dart';
import 'package:instagram_clone/features/presentation/pages/profile/profile_page.dart';
import 'package:instagram_clone/features/presentation/pages/search/search_page.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void navigationTapped(int index) {
    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white,
            onTap: navigationTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                ),
                label: '',
              ),
            ],
          ),
          body: PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            children: const <Widget>[
              HomePage(),
              SearchPage(),
              PostPage(),
              ActivityPage(),
              ProfilePage()
            ],
          )),
    );
  }
}
