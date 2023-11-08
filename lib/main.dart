import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone_app/provider/count.dart';
import 'package:spotify_clone_app/screen/home_provider.dart';
import 'package:spotify_clone_app/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Count(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeProvider(),
      ),
    );
  }
}
