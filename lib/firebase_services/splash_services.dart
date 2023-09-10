

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:legalease/views/auth_screen/intro.dart';

import '../consts/consts.dart';
import '../views/app_screens/home_screen.dart';

class SplashServices { 
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if (user != null) { //ALREADY LOGIN HAI
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen())));
    } else {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const introduction())));
    }
  }
}
