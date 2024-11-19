import 'package:flutter/material.dart';
import 'package:gigglegoods/screens/login.dart';
import 'package:gigglegoods/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Mental Health Tracker',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.black, // Set default button color
            secondary: Colors.pink, // Secondary color for FABs, etc.
          ),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
