import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pushnotification/views/recommanded.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("shetu");
    print("shaikat");
    // FirebaseMessaging.instance.getInitialMessage();
    // FirebaseMessaging.onMessage.listen((message) {
    //   if (message.notification == null) {
    //     print(message.notification!.title);
    //     print(message.notification!.body);
    //     print("shetu");
    //     print("shaikat");
    //   }
    // });
    // forground state
    FirebaseMessaging.instance.getInitialMessage();
    FirebaseMessaging.onMessage.listen((message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
      }
    });

    //app is opened but not termineted

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (message.notification != null) {
        print(message.notification!.title);
        print(message.notification!.body);
        print(message.data['path']);
        Navigator.pushNamed(context, message.data['path']);
      }
    });

    // when the  app is  terminated

    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        print(message.notification!.title);
        print(message.notification!.body);
        print(message.data['path']);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Push Notification phone added"),
      ),
    );
    ;
  }
}
