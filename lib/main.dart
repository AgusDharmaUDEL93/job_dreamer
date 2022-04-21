import 'package:flutter/material.dart';
import 'package:job_dreamer/interface/home_page.dart';
import 'package:job_dreamer/interface/login_page.dart';
import 'package:job_dreamer/interface/register_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/loginpage',
      routes: {
        HomePage.nameRoute : (context) => const HomePage(),
        LoginPage.nameRoute : (context) => const LoginPage(),
        RegisterPage.nameRoute : (context) => const RegisterPage(),

      },
      home: const LoginPage(),
    );
  }
}