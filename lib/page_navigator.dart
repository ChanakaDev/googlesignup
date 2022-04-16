// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'sign_in_screen.dart';
import 'logged_in.dart';

class PageNavigator extends StatelessWidget {
  const PageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            print('Waiting');
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData) {
            print('Logged in');
            return const LoggedInScreen();
          } else if (snapshot.hasError) {
            print('Error');
            return const Center(
              child: Text('Something went wrong!'),
            );
          } else {
            print('Sign in');
            return const SignInScreen();
          }
        },
      ),
    );
  }
}
