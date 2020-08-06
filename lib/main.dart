import 'package:biggy237/auth_landing.dart';
import 'package:biggy237/route_manager.dart';
import 'package:biggy237/services/firebase_auth.service.dart';
import 'package:biggy237/strings.dart';
import 'package:biggy237/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<FirebaseAuthService>(
      //builder: (_) => FirebaseAuthService(),
      create: (_) => FirebaseAuthService(),
      child: MaterialApp(
        title: Strings.app_name,
        debugShowCheckedModeBanner: false,
        theme: getTheme(),
        home: AuthLanding(),
      ),
    );
  }
}
