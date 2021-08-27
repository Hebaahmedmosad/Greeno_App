<<<<<<< HEAD
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

=======


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

>>>>>>> efac7f71bdfa8893166769e83cc89b98703407cb
import 'package:firebase_core/firebase_core.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/homepage.dart';
import 'package:plant_app/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // primaryColor: Color(0xff746bc9),
          // iconTheme: IconThemeData(color: Colors.black),
          ),
      debugShowCheckedModeBanner: false,
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
