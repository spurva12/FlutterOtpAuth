import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/home_screen.dart';
import 'Screens/login_screen.dart';
import 'Screens/signup_screen.dart';
import 'Screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => WelcomeScreen(),
        'registration_screen': (context) => RegistrationScreen(),
        'login_screen': (context) => LoginScreen(),
        'home_screen': (context) => const HomeScreen()
      },
    );
  }
}