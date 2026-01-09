import 'package:codeedex_task/controller/home_controller.dart';
import 'package:codeedex_task/modules/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/auth_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginController()),
        ChangeNotifierProvider(create: (_) => HomeController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Codeedex Task',
        theme: ThemeData(
          primaryColor: const Color(0xFF8B4513),
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const LoginScreen(),
      ),
    );
  }
}
