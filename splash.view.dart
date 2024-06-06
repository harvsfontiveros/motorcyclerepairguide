import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:motorcycleapp/view/login.view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(const LoginView());
    });

    return const Scaffold(
        backgroundColor: Color(0xFF2196F3),
        body: Center(
          child: Text('Logo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
