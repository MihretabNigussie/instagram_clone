import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comments'),
      ),
      body: const Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/profile_default.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Username'),
                    const Text('Time'),
                  ],
                )
              ],
            ),
          ])),
    );
  }
}
