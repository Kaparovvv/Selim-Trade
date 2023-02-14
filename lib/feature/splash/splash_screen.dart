import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   navigate();
  //   super.initState();
  // }

  // Future<void> navigate() async {
  //   await Future.delayed(
  //     const Duration(seconds: 3),
  //   );
  //   context.router.replace(const MainScreen());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
      ),
    );
  }
}
