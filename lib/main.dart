import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/core/routing/routing_config.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'Instagram Clone',
    options: const FirebaseOptions(
      appId: '1:186892994579:android:a380ebc01e227e8020d7e6',
      messagingSenderId: '186892994579',
      projectId: 'instagram-clone-b2fe3',
      apiKey: 'AIzaSyAMsYfYFnpnfsnceya-C9SZe2irqn6ddHE',
    ),
  );
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
