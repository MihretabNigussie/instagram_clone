import 'package:flutter/material.dart';
import 'package:instagram_clone/core/routing/routing_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      darkTheme: ThemeData.dark(),
      routerConfig: router,
    );
  }
}
