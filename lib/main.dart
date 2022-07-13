import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'screens/login_screen.dart';
import 'services/api_service.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => ApiService());
}

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fake Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
