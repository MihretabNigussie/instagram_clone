import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: backGroundColor,
          title: const Text(
            'Activity',
            style: TextStyle(color: primaryColor, fontSize: 20),
          ),
        ),
        body: const Center(
          child: Text('Activity Page'),
        ),
      ),
    );
  }
}
