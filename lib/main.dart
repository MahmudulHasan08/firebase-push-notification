import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pushnotification/views/homescreen.dart';
import 'package:pushnotification/views/recommanded.dart';
import 'package:pushnotification/views/spalshScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        'recommended': (context) => Recommended(),
      },
    );
  }
}

// class PushNotification extends StatelessWidget {
//   const PushNotification({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text("Push Notification phone added"),
//       ),
//     );
//   }
// }
