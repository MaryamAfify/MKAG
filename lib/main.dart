import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mkag/features/chat_input/view/chat_input_screen.dart';
import 'package:mkag/features/splash/view/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white, // Set your desired cursor color here
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.spaceGroteskTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.white, // Default text color for body text
          displayColor: Colors.white, // Default text color for display text
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: 
          Colors.black,
          titleSpacing: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          elevation: 0,
        ),
      ),
      home:  SplashScreen()
    );
  }
}
