import 'package:devnology_test/features/car/car.dart';
import 'package:devnology_test/features/final/final.dart';
import 'package:devnology_test/features/home.dart/home.dart';
import 'package:devnology_test/features/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>const Splash(),
        '/home':(context)=>const Home(),
        '/car':(context)=>const Car(),
        '/final':(context) => const Final()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: const Color.fromARGB(255, 34, 32, 45),),
        primarySwatch: Colors.blue,
      bottomAppBarColor:  const Color.fromARGB(255, 34, 32, 45), 
      ),
      
    
    );
  }
}

