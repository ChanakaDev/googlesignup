// ignore_for_file: await_only_futures

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:googlesignup/google_sign_in_provider.dart';
import 'package:googlesignup/sign_in_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // Step 01
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false, // remove debug bannar
          title: 'Flutter Google Sign in',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SignInScreen(),
        ),
      );
}
