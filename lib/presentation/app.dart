import 'package:first_choices/presentation/routes/app_routes.dart';
import 'package:flutter/material.dart';
import '../core/app_colors.dart'; // Optional if you have a constants setup

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),

       initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.generateRoute ,
    
    
 
    );
  }
}
