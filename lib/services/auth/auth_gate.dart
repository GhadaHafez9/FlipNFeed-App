// Check Weather the current user is logged in or not //////////////

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/home.dart';
import 'package:food_delivery_app/services/auth/login_or_sign.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            // logged in
            if (snapshot.hasData) {
              return const HomePage();
            }

            // NOT
            else {
              return const AuthPage();
            }
          }),
    );
  }
}
