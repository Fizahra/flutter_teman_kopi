import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 305,
                child: Lottie.network(
                  'https://assets4.lottiefiles.com/private_files/lf30_Xtzj7X.json',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Teman Kopi',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ]),
      ),
    );
  }
}
