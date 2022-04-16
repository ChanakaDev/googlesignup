import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:googlesignup/page_navigator.dart';
import 'package:provider/provider.dart';

import 'google_sign_in_provider.dart';
import 'sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          home: const PageNavigator(),
        ),
      );
}
