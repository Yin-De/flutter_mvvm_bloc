import 'package:flutter/material.dart';
import 'package:yinde/di/dependency_injection.dart';
import 'package:yinde/presentation/home_page.dart';
import 'package:yinde/presentation/resources/color_management.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        colorScheme: ColorScheme.dark(
          background: ColorManager.primary
        )
      ) ,
      home: const Scaffold(


        body: HomePage() ,
      )



      ,
    );
  }
}

