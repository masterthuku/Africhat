import 'package:africhat/chat_page.dart';
import 'package:africhat/core/theme.dart';
import 'package:africhat/features.auth/presentation/pages/login_page.dart';
import 'package:africhat/features.auth/presentation/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AfriChat',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: Scaffold(
        body: Center(
          child: RegisterPage(),
        ),
      ),
    );
  }
}

