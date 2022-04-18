import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_doctor_ui/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        //Using google font
        
       fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

