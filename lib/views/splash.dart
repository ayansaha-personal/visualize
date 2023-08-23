import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vizualize/utils/ui.dart';
import 'package:vizualize/views/login.dart';
import 'package:vizualize/views/shared/progress_bar.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  checkAuth() async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      await showModalBottomSheet(context: context, builder: (context) => const LoginView());
    }
    return user != null;
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) => checkAuth());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareProgressBar(
          progress: 0.0,
          height: calculateHeight(context, 20),
          width: calculateHeight(context, 20),
          solidBarColor: Theme.of(context).textTheme.titleLarge?.color ?? Colors.black,
          emptyBarColor: (Theme.of(context).textTheme.titleLarge?.color ?? Colors.black).withOpacity(0.2),
          isAnimation: true,
          isRtl: true,
          child: Image.asset(
            'assets/images/logo.png',
            height: calculateHeight(context, 20),
            width: calculateHeight(context, 20),
            color: Theme.of(context).textTheme.titleLarge?.color ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
