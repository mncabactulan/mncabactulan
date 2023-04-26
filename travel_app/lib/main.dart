import 'package:flutter/material.dart';
import 'package:travel_app/welcome_page.dart.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      //   textTheme: GoogleFonts.mulishTextTheme(
      //     Theme.of(context).textTheme,
      // ),
      ),
      home: const WelcomePage(),
    );
  }
}

