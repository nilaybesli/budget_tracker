import 'package:budget_tracker/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA9vMSNltzrW89yRGo9Zr9To6F83ZstfK4",
          appId: "1:931507153913:android:44b85ca510c14fb2f06b28",

          messagingSenderId: "725344960075", //

          projectId: "budget-tracker-f63b0",
          storageBucket: "budget-tracker-f63b0.appspot.com"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Tacker',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}